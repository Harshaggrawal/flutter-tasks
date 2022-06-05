import 'package:flutter/material.dart';

class CalculatorWidget extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  const CalculatorWidget({ required this.text ,required this.fillColor,required this.textColor,});

  @override
  Widget build(BuildContext context) {
    return Container(
                  margin: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 100,
                    height: 80,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60.0),
                      ) ,
                      child: Text(text,
                      style: const TextStyle(
                        fontSize: 24,
                        ),),
                      onPressed: ()=>{},
                      color: Color(fillColor),
                      textColor: Color(textColor),
                    ),
                  ),

    );
  }
}