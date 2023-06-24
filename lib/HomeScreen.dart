import 'package:buy_it/productsgrid.dart';
import 'package:flutter/material.dart';
import 'productsgrid.dart';
import 'productItem.dart';
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
   static const String name='HomeScreen';


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Go For Book'),
        centerTitle: true,
      ),
      body: ProductsGrid(),
    );
  }
}

