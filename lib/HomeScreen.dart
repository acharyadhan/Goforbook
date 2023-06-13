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
      description : 'David Goggins shares how he transcended poverty   and abuse to become one of the world’s top endurance athletes. His story reveals how mastering your mind, hard work, and becoming friends with pain can help you achieve the unimaginable.',
      price: '\$${40.00}',
        imageURL: 'https://www.dymocks.com.au/Pages/ImageHandler.ashx?q=9781544512273&w=&h=570',
      isFavourite: false ,
    ),
    Product(
      id: 'p2',
      title :'Albert Einstein',
      description : "A Biography by Alice Calaprice and Trevor Lipscombe is a biography of Albert Einstein, the greatest scientist in the world and a man laden with pure genius and brilliance. This book tells us about Einstein's childhood, the time when he left school and how he debunked people's belief that he was dumb and lacked intelligence. The book describes his childhood in Germany and then his teens in Italy. Einstein took a diploma exam in Zurich and then failing to find a suitable job, he worked as a patent clerk in Switzerland. ",
      price: '\$${23.99}',
      imageURL: 'https://d1pwnu15mzvjms.cloudfront.net/210x320/9781504040310.jpg',
      isFavourite: false ,
    ),
    Product(
      id: 'p3',
      title :'Steve jobs',
      description : 'Steve Jobs was a charismatic pioneer of the personal computer era. With Steve Wozniak, Jobs founded Apple Inc. in 1976 and transformed the company into a world leader in telecommunications. Widely considered a visionary and a genius, he oversaw the launch of such revolutionary products as the iPod and the iPhone',
      price: '\$${45.60}',
      imageURL: 'https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781982176860/steve-jobs-9781982176860_lg.jpg',
      isFavourite: false ,
    ),
    Product(
      id: 'p4',
      title :'12 Rules for Life',
      description : "Dr. Peterson journeys broadly, discussing discipline, freedom, adventure and responsibility, distilling the world's wisdom into 12 practical and profound rules for life. 12 Rules for Life shatters the modern commonplaces of science, faith and human nature, while transforming and ennobling the mind and spirit of its readers",
      price: '\$${55.99}',
      imageURL: 'https://m.media-amazon.com/images/I/31z58oFl3HL._SX329_BO1,204,203,200_.jpg',
      isFavourite: false ,
    ),




  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Go For Book'),
        centerTitle: true,
      ),
      body: GridView.builder(
        //padding: EdgeInsets.all(14.0 ),
           itemCount: loadedProduct.length ,
          itemBuilder: (ctx,i )=> ProductItem(
            loadedProduct[i].price,
            loadedProduct[i].title,
            loadedProduct[i].imageURL,
            loadedProduct[i].description,
          ),
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 3/2 ,crossAxisSpacing: 10,mainAxisSpacing: 10),
      ),
    );
  }
}