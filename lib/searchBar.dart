import 'package:flutter/material.dart';

void main() {
  runApp(const Search());
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: TextField(
          cursorHeight: 20,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'raleway'
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffdfe9ff),
            hintText: 'Search',
            suffixIcon: Icon(Icons.camera_alt_outlined, size: 19.56,color: Color(0xff004cff),),
            border: 
            InputBorder.none,
            // OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(8.0))
            // ),
            contentPadding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
