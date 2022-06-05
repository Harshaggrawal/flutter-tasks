import 'package:flutter/material.dart';
import 'package:flutter_application_1/fuel_calculator/fuel_calculator.dart';
// import 'package:flutter_application_1/screens/fuel_calculator.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FuelCalculator(),
    ),
  );
}