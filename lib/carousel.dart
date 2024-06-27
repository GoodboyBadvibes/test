import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Carousel());
}

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
        options: CarouselOptions(height: 170.0, autoPlay: true, scrollDirection: Axis.horizontal, viewportFraction: 1.2, slideIndicator: CircularSlideIndicator(indicatorRadius: 4.5, indicatorBorderColor: Colors.blue, currentIndicatorColor: Colors.blue, itemSpacing: 10,)),
        items: ['lib/assets/Banner1.png','lib/assets/Banner2.png'].map((i) {
          return Builder(builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: MediaQuery.of(context).size.width-20,
                // margin: EdgeInsets.symmetric(horizontal: 5.0),
                // decoration: BoxDecoration(color: Colors.amber),
                child: Image.asset(i, fit:BoxFit.contain),
              ),
            );
          });
        }).toList()
        );
  }
}
