// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/color_change_app/provider.dart';
import 'package:flutter_application_2/color_change_app/proxyprovide.dart';
import 'package:provider/provider.dart';

class ColorApp extends StatefulWidget {
  const ColorApp({ Key? key }) : super(key: key);

  @override
  State<ColorApp> createState() => _ColorAppState();
}

class _ColorAppState extends State<ColorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<ColorChange>().randomcolor,
      appBar: AppBar(
        title: const Text('Colors app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              context.read<ColorChange>().getColor();
            }, child: const Text(
              'ChangeBG',
                style: TextStyle(fontSize: 30),
            )),
            Text(context.watch<TextProvider>().message),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    context.read<TextProvider>().firstmessage('hello');
                  }, child: const Text(
                    'button 1',
                    style: TextStyle(fontSize: 30),
                  ),),
                  const SizedBox(width: 20.0,),

                  ElevatedButton(
                    onPressed: (){context.read<Textprovider2>().getmessage2('hy');}, 
                    child: const Text(
                    'button 2',
                    style: TextStyle(fontSize: 30),
                  ),)


              ],
            )
          ]),
       
    ));
  }
}