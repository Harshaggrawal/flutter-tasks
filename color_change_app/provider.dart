// import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class ColorChange extends ChangeNotifier{
 final List<Color> _colors= [Colors.red,Colors.green,Colors.black,Colors.amberAccent,Colors.pink,Colors.purple,Colors.deepOrange];

 List get colors => _colors;
 var randomcolor ;
 void getColor(){
  randomcolor = colors[Random().nextInt(colors.length)];
  notifyListeners();
 }
}