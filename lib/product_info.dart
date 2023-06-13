
import 'package:flutter/material.dart';
class ProductDetail extends StatelessWidget {
  //final String title;
  //ProductDetail (this.title);

  static const String name='product_info';

  const ProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
  final arguments = ModalRoute.of(context)?.settings.arguments as  Map<String,String>;// key value
  // This is how the arguments i.e here title is received from ProductItem Screen
  print(arguments);
    return Scaffold(
      appBar: AppBar(
        title: Text(arguments['title']!),
        centerTitle: true,

      ),
      body: Center(
          child:Text(arguments['id']!)
                      ),
    );
  }
}
