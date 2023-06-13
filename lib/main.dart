
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'product_info.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: MyHomePage(),

      routes: {

               ProductDetail.name:(context)=> ProductDetail(),

      },
    );
  }
}


