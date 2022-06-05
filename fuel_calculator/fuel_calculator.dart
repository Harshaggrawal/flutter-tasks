import 'package:flutter/material.dart';

class FuelCalculator extends StatefulWidget {
  const FuelCalculator({Key? key}) : super(key: key);

  @override
  State<FuelCalculator> createState() => _FuelCalculatorState();
}

class _FuelCalculatorState extends State<FuelCalculator> {
  final _curriencies = ['rupees', 'dollars', 'euro', 'pounds'];
  String _currency = 'rupees';
  String result = '';

  var distanceController = TextEditingController();
  var unitController = TextEditingController();
  var priceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.directions_car_rounded),
        title: const Text('Fuel Calculator'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: const Color.fromARGB(255, 228, 225, 225),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                
                controller: distanceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    // fillColor: Colors.amber,
                    labelText: 'distance',
                    hintText: 'e.g. 340',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: unitController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'no. of km/litre',
                    hintText: 'e.g. 30',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0))),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: TextField(
                      controller: priceController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'fuel cost per litre',
                        hintText: 'e.g. 110',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),)
                      ),
                    ),
                  ), 
                ),
                Expanded(
                  child: DropdownButton(
                    value: _currency,
                    items: _curriencies.map((String currency) {
                      return DropdownMenuItem<String>(
                          child: Text(currency), value: currency);
                    }).toList(),
                    onChanged: (String? value) {
                      _onDropDownMenuItemChanged(value);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row
              (
                children: [
                  Expanded(
                    child: ElevatedButton
                    (
                      onPressed: (){
                        _calculate();
                      },
                      child: const Text('calculate'),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        _reset();
                      },
                      child: const Text('Reset'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                result,
                style: const TextStyle(fontSize: 24.0,color: Colors.purpleAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onDropDownMenuItemChanged(String? value){
    setState(() {
      _currency=value!;
    });
  }

  void _calculate(){
    double distance=double.parse(distanceController.text);
    double unitValue=double.parse(unitController.text);
    double price= double.parse(priceController.text);

    double totalCost = (distance / unitValue) * price;

    setState(() {
      result =
          'Total Cost of the Trip : \n${totalCost.toStringAsFixed(2)} in $_currency';
    });
  }

  void _reset(){
    distanceController.text='';
    unitController.text='';
    priceController.text='';

    setState(() {
      result = '';
      _currency='rupees';
    });
  }
}
