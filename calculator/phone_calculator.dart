import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculator/button_widget.dart';

class Calculator extends StatefulWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Calculator'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      
      backgroundColor: const Color.fromRGBO(7, 53, 64, 1),
      // ignore: avoid_unnecessary_containers
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.purple,Colors.deepPurpleAccent,Colors.purple])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: const Padding(
                padding: EdgeInsets.only(right:12),
                child: Text(
                  '987 x 4',style: TextStyle(
                    fontSize: 24,
                    color: Colors.grey,
                  ),
                ), 
                ),
                alignment: const Alignment(1, 1),
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  '987',style: TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
                ),
                alignment: const Alignment(1, 1),
            ),
            const Divider(thickness: 1.0,
            color: Color.fromRGBO(7, 8, 8, 1),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                CalculatorWidget(text: 'AC',
                fillColor: 0xFF05090A,
                textColor: 0xFFFFFFFF,),
                CalculatorWidget(text: '()',
                fillColor:0xFF05090A,
                textColor:0xFFFFFFFF,),
                CalculatorWidget(text: '%',
                fillColor:0xFF05090A,
                textColor:0xFFFFFFFF,),
                CalculatorWidget(text: '/',
                fillColor:0xFF05090A,
                textColor:0xFFFFFFFF,),
                
              ],
            ),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                CalculatorWidget(text: '7',
                fillColor: 0xFF8ac4d0,
                textColor: 0xFF000000,),
                CalculatorWidget(text: '8',
                fillColor:0xFF8ac4d0,
                textColor:0xFF000000,),
                CalculatorWidget(text: '9',
                fillColor:0xFF8ac4d0,
                textColor:0xFF000000,),
                CalculatorWidget(text: 'x',
                fillColor:0xFF05090A,
                textColor:0xFFFFFFFF,),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                CalculatorWidget(text: '4',
                fillColor: 0xFF8ac4d0,
                textColor: 0xFF000000,),
                CalculatorWidget(text: '5',
                fillColor:0xFF8ac4d0,
                textColor:0xFF000000,),
                CalculatorWidget(text: '6',
                fillColor:0xFF8ac4d0,
                textColor:0xFF000000,),
                CalculatorWidget(text: '-',
                fillColor:0xFF05090A,
                textColor:0xFFFFFFFF,),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                CalculatorWidget(text: '1',
                fillColor: 0xFF8ac4d0,
                textColor: 0xFF000000,),
                CalculatorWidget(text: '2',
                fillColor:0xFF8ac4d0,
                textColor:0xFF000000,),
                CalculatorWidget(text: '3',
                fillColor:0xFF8ac4d0,
                textColor:0xFF000000,),
                CalculatorWidget(text: '+',
                fillColor:0xFF05090A,
                textColor:0xFFFFFFFF,),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                CalculatorWidget(text: '0',
                fillColor: 0xFF8ac4d0,
                textColor: 0xFF000000,),
                CalculatorWidget(text: '.',
                fillColor:0xFF8ac4d0,
                textColor:0xFF000000,),
                CalculatorWidget(text: 'C',
                fillColor:0xFF8ac4d0,
                textColor:0xFF000000,),
                CalculatorWidget(text: '=',
                fillColor:0xFF05090A,
                textColor:0xFFFFFFFF,),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}