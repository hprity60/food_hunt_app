import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  final String text;
  const CategoryItem({
    Key? key,
   required this.image,
   required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: 10),
          Text(text),
        ],
      ),
    );
  }
}
