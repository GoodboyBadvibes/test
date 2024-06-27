import 'package:flutter/material.dart';

void main() {
  runApp(const Favorites());
}

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This is Favorites section'),
    );
  }
}
