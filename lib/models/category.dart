class Category {
  final List images;
  final String name;
  final String stock;
  final String details;
  final String price;
  final String discount;
  final String likes;
  final String status;


  Category({
    required this.images,
    required this.name,
    required this.stock,
    this.details = ' lorem ipsum dolor sit amet consectetur ',
     this.price= ' lorem ipsum dolor sit amet consectetur ',
  this.discount= ' lorem ipsum dolor sit amet consectetur ',
  this.likes= ' lorem ipsum dolor sit amet consectetur ',
  this.status= ' lorem ipsum dolor sit amet consectetur ',

  });
}
