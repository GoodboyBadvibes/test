import 'package:flutter/material.dart';

void main() {
  runApp(const Filter());
}

class Filter extends StatelessWidget {
  const Filter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('This is Filter section'),
    );
  }
}