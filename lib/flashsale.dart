import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'models/product.dart';

void main() {
  runApp(const FlashSale());
}

List<Product> products = [
  Product(image: 'lib/assets/image25.png'),
  Product(image: 'lib/assets/image26.png'),
  Product(image: 'lib/assets/image27.png'),
  Product(image: 'lib/assets/image28.png'),
  Product(image: 'lib/assets/image29.png'),
  Product(image: 'lib/assets/image30.png')
];

class FlashSale extends StatelessWidget {
  const FlashSale({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.95,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0),
                  scrollDirection: Axis.vertical,
                  itemCount: products.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) => Card(
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    elevation: 1,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          width: 99,
                          height: 103,
                          decoration: BoxDecoration(image: DecorationImage(image:AssetImage(products[index].image),fit: BoxFit.cover) ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [ClipRRect(
                               borderRadius: BorderRadius.all(Radius.circular(6)),
                              child: Container(
                                padding: EdgeInsets.only(left: 7.5, right: 7.5),
                                color: Colors.pink,
                                child: Text(products[index].discount,style: TextStyle(fontSize: 13, fontFamily:'raleway',fontWeight: FontWeight.bold,color: Colors.white ),),
                              ),
                            )],
                          ),
                        ),
                      ),
                    ),
                  )));
  }
}