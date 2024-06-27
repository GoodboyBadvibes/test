import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'models/product.dart';

void main() {
  runApp(const Popular());
}

List<Product> products = [
  Product(image: "lib/assets/image31.png"),
  Product(image: "lib/assets/image25.png"),
  Product(image: "lib/assets/image32.png"),
  Product(image: "lib/assets/image29.png"),
];

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 5000,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            height: 140,
            child: Card(
              surfaceTintColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset(
                      products[index].image,
                      width: 140,
                      height: 103,
                      fit: BoxFit.contain,
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [Text(products[index].sold,style: TextStyle(fontSize: 15,fontFamily:'Raleway',fontWeight: FontWeight.bold, ) ,), Icon(Icons.favorite, size: 10.45, color: Color(0xff0042e0),)],
                        ),
                        Text(products[index].status,style: TextStyle(fontSize: 13,fontFamily:'Raleway' ) ,),

                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
      ),
    );
  }
}
