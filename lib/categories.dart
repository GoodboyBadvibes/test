import 'package:flutter/material.dart';
import 'package:uitest/models/category.dart';

void main() {
  runApp(const Categories());
}

List<Category> categories = [
  Category(
    images: [
      'lib/assets/image1.jpg',
      'lib/assets/image2.jpg',
      'lib/assets/image3.jpg',
      'lib/assets/image4.jpg'
    ],
    name: 'Clothing',
    stock: "109",
  ),
  Category(
    images: [
      'lib/assets/image5.png',
      'lib/assets/image6.png',
      'lib/assets/image7.png',
      'lib/assets/image8.png'
    ],
    name: 'Shoes',
    stock: "530",
  ),
  Category(
    images: [
      'lib/assets/image9.png',
      'lib/assets/image10.png',
      'lib/assets/image11.png',
      'lib/assets/image12.png'
    ],
    name: 'Bags',
    stock: "87",
  ),
  Category(
    images: [
      'lib/assets/image13.png',
      'lib/assets/image14.png',
      'lib/assets/image15.png',
      'lib/assets/image16.png'
    ],
    name: 'Lingerie',
    stock: "218",
  ),
  Category(
    images: [
      'lib/assets/image17.png',
      'lib/assets/image18.png',
      'lib/assets/image19.png',
      'lib/assets/image20.png'
    ],
    name: 'Watch',
    stock: "87",
  ),
  Category(
    images: [
      'lib/assets/image21.png',
      'lib/assets/image22.png',
      'lib/assets/image23.png',
      'lib/assets/image24.png'
    ],
    name: 'Hoodies',
    stock: "218",
  ),
];

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0),
        scrollDirection: Axis.vertical,
        itemCount: categories.length,
        shrinkWrap: true,
        itemBuilder: ((context, index) => SizedBox(
          width: 165,
          height: 192,
          child: Card(
            surfaceTintColor:Colors.white ,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 2.5,
                      mainAxisSpacing: 2.5),
                  scrollDirection: Axis.vertical,
                  itemCount: categories[index].images.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index1) => ClipRRect(
                        //ClipRect was used here so that border radius can be achieved
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          categories[index].images[index1],
                          fit: BoxFit.contain,
                          width: 75,
                          height: 75,
                        ),
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(categories[index].name,style: TextStyle(fontSize: 17,fontFamily:'raleway',fontWeight: FontWeight.bold, )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      color: Color(0xffDFE9FF),
                      child: Text(categories[index].stock,style: TextStyle(fontSize: 12,fontFamily:'raleway',fontWeight: FontWeight.bold, ))),
                  )
                ],
              ),
                            ],
                          ),
            ),
          ),
        )));
  }
}
