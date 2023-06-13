import 'package:buy_it/product.dart';
import 'package:flutter/material.dart';

import 'productItem.dart';
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});
   static const String name='HomeScreen';
  final List<Product> loadedProduct=[
    Product(
      id: 'p1',
      title :'David Goggins',
      description : 'Baddest Man on the planet',
      price: '\$${40.00}',
        imageURL: 'https://www.dymocks.com.au/Pages/ImageHandler.ashx?q=9781544512273&w=&h=570',
      isFavourite: false ,
    ),
    Product(
      id: 'p2',
      title :'Albert Einstein',
      description : 'The great scientist',
      price: '\$${23.99}',
      imageURL: 'https://d1pwnu15mzvjms.cloudfront.net/210x320/9781504040310.jpg',
      isFavourite: false ,
    ),
    Product(
      id: 'p3',
      title :'Steve jobs',
      description : 'The great scientist',
      price: '\${45.60}',
      imageURL: 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781982176860/steve-jobs-9781982176860_lg.jpg',
      isFavourite: false ,
    ),
    Product(
      id: 'p4',
      title :'Software Engineering',
      description : 'Great to learn',
      price: '\$${55.99}',
      imageURL: 'https://m.media-amazon.com/images/I/511DuL1myZL._SX198_BO1,204,203,200_QL40_FMwebp_.jpg',
      isFavourite: false ,
    ),




  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Personalized  shop'),
        centerTitle: true,
      ),
      body: GridView.builder(
        //padding: EdgeInsets.all(14.0 ),
           itemCount: loadedProduct.length ,
          itemBuilder: (ctx,i )=> ProductItem(
            loadedProduct[i].id,
            loadedProduct[i].title,
            loadedProduct[i].imageURL,
          ),
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3/2 ,crossAxisSpacing: 10,mainAxisSpacing: 10),
      ),
    );
  }
}