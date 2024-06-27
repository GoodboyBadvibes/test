class Product {
  final String image;
  final String detail;
  final String price;
  final String discount;
  final String likes;
  final String status;
  final String sold;

  Product(
      {required this.image,
      this.detail = ' Lorem ipsum dolor sit amet consectetur ',
      this.price = '\$12,00',
      this.discount = '-20%',
      this.likes = '169',
      this.status = 'New',
      this.sold = '1780'});
}
