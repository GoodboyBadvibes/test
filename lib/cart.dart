import 'package:flutter/material.dart';

void main() {
  runApp(const Cart());
}

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This is Cart section'),
    );
  }
}