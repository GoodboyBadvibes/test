import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'models/product.dart';

void main() {
  runApp(const ForYou());
}

List<Product> products = [
  Product(image: "lib/assets/image28.png"),
  Product(image: "lib/assets/image27.png"),
  Product(image: "lib/assets/image29.png"),
  Product(image: "lib/assets/image30.png"),
  Product(image: "lib/assets/image33.png"),
  Product(image: "lib/assets/image26.png"),
];

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 8, right: 8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0),
        // scrollDirection: Axis.vertical,
        itemCount: products.length,
        shrinkWrap: true,
        itemBuilder: ((context, index) => Column(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          child: Image.asset(
                            products[index].image,
                            width: 185,
                            height: 151,
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                ),
                Text(
                  products[index].detail,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    products[index].price,
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            )));
  }
}
