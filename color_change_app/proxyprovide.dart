// import 'package:flutter/cupertino.dart';import
import 'package:flutter/material.dart';

class TextProvider with ChangeNotifier{
  String _message = '';
  String get message => _message;
  void firstmessage(msg){
    _message = msg;
    notifyListeners();
  }
}

class Textprovider2{
  TextProvider _message2;
  Textprovider2(this._message2);


  void getmessage2(input){
    _message2.firstmessage(input);
  }
}