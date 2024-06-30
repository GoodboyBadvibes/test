import 'package:flutter/material.dart';
import 'package:uitest/models/product.dart';

void main() {
  runApp(const New());
}

List<Product> products = [
  Product(image: "lib/assets/image5.png"),
  Product(image: "lib/assets/image6.png"),
  Product(image: "lib/assets/image7.png"),
  Product(image: "lib/assets/image8.png"),
];

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 229,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 8),
            width: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shadowColor: Colors.black,
                  surfaceTintColor: Colors.white,
                  elevation: 2.5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          products[index].image,
                          fit: BoxFit.cover,
                          width: 130,
                          height: 130,
                        )),
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
                  ),
                )
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
      ),
    );
  }
}
