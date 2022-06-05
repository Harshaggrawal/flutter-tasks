import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/e_commerce_using%20getx/product_catalog_view.dart';
// import 'package:flutter_application_2/unit_testing/calculator_ui.dart';
// import 'package:flutter_application_2/add_to_cart/product_catalog_screen.dart';
// import 'package:flutter_application_2/e_commerce_using%20getx/product_catalog_view.dart';
import 'package:get/get.dart';

Future main() async {
  runApp(const SMDemoApp());
}
class SMDemoApp extends StatelessWidget {
  const SMDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false, home:ProductsCatalog(),
    );
  }
}