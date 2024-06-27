import 'package:flutter/material.dart';
import 'package:uitest/home.dart';

import 'cart.dart';
import 'favorites.dart';
import 'filter.dart';
import 'profile.dart';

void main() {
  runApp(const Layout());
}

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

   void _navigateFooter(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [Home(), Favorites(), Filter(), Cart(), Profile()];

  int _selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: _pages[_selectedIndex],
      bottomNavigationBar:  SizedBox( //sizedbox was used here so as to reduce the height of the footer
        height: 64,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.filter_list), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
          ],
          type: BottomNavigationBarType.fixed,
          iconSize: 23,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Color(0xff004cff),
      
          currentIndex: _selectedIndex,
          onTap: _navigateFooter,
        ),
      ),
    );
  }
}