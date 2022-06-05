import 'package:flutter/material.dart';
import 'package:flutter_application_2/crypta_ui/main_screen.dart';

Future  main(List<String> args) async {
  runApp(const RestServicesDemoApp());

}

class RestServicesDemoApp extends StatelessWidget {
  const RestServicesDemoApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoinAppDemo(),
    );
  }
}