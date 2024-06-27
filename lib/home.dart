import 'package:flutter/material.dart';

import 'carousel.dart';
import 'categories.dart';
import 'counter.dart';
import 'flashsale.dart';
import 'foryou.dart';
import 'new.dart';
import 'popular.dart';
import 'searchBar.dart';
import 'topProducts.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shop',style: TextStyle(fontSize: 28,fontFamily:'raleway',fontWeight: FontWeight.bold),),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Search(),
                    ))
                  ],
                ),
              ),
              Carousel(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Categories',style: TextStyle(fontSize: 21,fontFamily:'raleway',fontWeight: FontWeight.bold, ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('See All',style: TextStyle(fontSize: 15,fontFamily:'raleway',fontWeight: FontWeight.bold, ),),
                        Icon(Icons.arrow_circle_right,color: Color(0xff004cff),)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Categories(),
              ),
              SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   children: [
                     Text('Top Products',style: TextStyle(fontSize: 21, fontFamily:'raleway',fontWeight: FontWeight.bold, ),),
                   ],
                 ),
               ),
               TopProducts(),
               SizedBox(height: 20,),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New Items',style: TextStyle(fontSize: 21,fontFamily:'raleway',fontWeight: FontWeight.bold, ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('See All',style: TextStyle(fontSize: 15,fontFamily:'raleway',fontWeight: FontWeight.bold, ),),
                        Icon(Icons.arrow_circle_right,color: Color(0xff004cff),)
                      ],
                    )
                  ],
                ),
              ),
              New(),
               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text('Flash Sale',style: TextStyle(fontSize: 21, fontFamily:'raleway',fontWeight: FontWeight.bold, ),),
                     Row(
                      children: [
                        Icon(Icons.alarm, color: Color(0xff004cff),),
                        Counter()
                      ],
                     )
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: FlashSale(),
               ),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Most Popular',style: TextStyle(fontSize: 21,fontFamily:'raleway',fontWeight: FontWeight.bold, ),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('See All',style: TextStyle(fontSize: 15,fontFamily:'raleway',fontWeight: FontWeight.bold, ),),
                        Icon(Icons.arrow_circle_right,color: Color(0xff004cff),)
                      ],
                    )
                  ],
                ),
              ),
              Popular(),
              SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Just For You',style: TextStyle(fontSize: 21, fontFamily:'raleway',fontWeight: FontWeight.bold, ),),
                     Icon(Icons.star, size: 14, color: Color(0xff004cff),)
                   ],
                 ),
               ),
               ForYou()
            ],

          )
        ]
      )
    );
  }
}
