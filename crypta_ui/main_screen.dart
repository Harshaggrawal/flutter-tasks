import 'dart:async';
import 'dart:convert';
// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/crypta_ui/coin_card_widget.dart';
import 'package:flutter_application_2/crypta_ui/model.dart';

import 'package:http/http.dart' as http;

class CoinAppDemo extends StatefulWidget {
  const CoinAppDemo({Key? key}) : super(key: key);

  @override
  State<CoinAppDemo> createState() => _CoinAppDemoState();
}

class _CoinAppDemoState extends State<CoinAppDemo> {
  List<Coin> coinList = [];
  Future<List> getCoinDetails() async 
  {
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc'));
    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.isNotEmpty) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJoson(map));
          }
        }
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception('please check internet connection');
    }
  }

  @override
  void initState() {
    getCoinDetails();
    Timer.periodic(const Duration(seconds: 10), (timer) => getCoinDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent.shade700,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text(
          'Cypto Coins Listing',
          style: TextStyle(
              color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: coinList.length,
        itemBuilder: ((context, index) {
          return CoinCard(
            name: coinList[index].name,
            symbol: coinList[index].symbol,
            imageurl: coinList[index].imageurl,
            price: coinList[index].price.toDouble(),
            change: coinList[index].change.toDouble(),
            changePercentage: coinList[index].changePercentage.toDouble(),
          );
        }),
      ),
    );
  }
}
