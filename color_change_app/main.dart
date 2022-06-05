import 'package:flutter/material.dart';
import 'package:flutter_application_2/color_change_app/provider.dart';
import 'package:flutter_application_2/color_change_app/proxyprovide.dart';
import 'package:flutter_application_2/color_change_app/screen.dart';
import 'package:provider/provider.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorApp(),
    );
  }
}

Future main(List<String> args) async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context)=>TextProvider()),
        ChangeNotifierProvider(
        create: (_) => ColorChange(),
      ),
      ProxyProvider<TextProvider,Textprovider2>(
        update: (context, msg, msg2)=> Textprovider2(msg))],
      child: const Demo(),
      
    ),
  );
}