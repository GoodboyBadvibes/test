import 'package:flutter/material.dart';

void main() {
  runApp(const TopProducts());
}

List products = [
  'lib/assets/image11.png',
  'lib/assets/image12.png',
  'lib/assets/image14.png',
  'lib/assets/image15.png',
  'lib/assets/image5.png',
  'lib/assets/image6.png',
  'lib/assets/image7.png',
  'lib/assets/image8.png',
  'lib/assets/image9.png',
  'lib/assets/image10.png',
];

class TopProducts extends StatelessWidget {
  const TopProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Card(
              borderOnForeground: false,
              elevation: 1,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                      radius: 40,
                      child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Image.asset(
                  products[index],
                  fit: BoxFit.fitWidth,
                  // width: 200,
                ),
              ),
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
