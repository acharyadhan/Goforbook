
class Product{
final String id;
 final String title;
 final String description;
 final String price;
 final String imageURL;
  bool isFavourite;// this shouldnt be final because it can be changed as the user tap
 Product({required this.id, required  this.title, required this.description, required this. price,required this.imageURL, required  this.isFavourite});


}