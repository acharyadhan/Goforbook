
import 'package:buy_it/product_info.dart';
import 'package:flutter/material.dart';
class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageURL;
  const ProductItem(this.id, this.title,  this.imageURL, {super.key});

  static const String name='productItem';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 12),

      child: GridTile(
          footer: GridTileBar(
            leading: IconButton(onPressed: null,
                icon: Icon(Icons.favorite_outline)),
              trailing: IconButton(onPressed: null,
                  icon: Icon(Icons.shopping_bag_outlined )),

              backgroundColor: Colors.blueGrey[500],

              title: Text(title,textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
          child:GestureDetector(
            onTap: (){
          // Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ProductDetail(title) ));
            // The problem with this approach is that at the present we dont need price but we have to pass  price which needs to be pass but only one argument can be pssed
              //This is solved by method pushnamed
              Navigator.pushNamed(context, ProductDetail.name, arguments: {'title': title,'id': id});
            },
            child: Image.network( imageURL,
            fit: BoxFit.cover ),
          ),
      ),
    );
  }
}
