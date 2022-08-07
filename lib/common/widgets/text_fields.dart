import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String hintText;
  final String labelText;
  const TextFields({
    Key? key,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: hintText,
            labelText: labelText,
          ),
        ),
      ],
    );
  }
}
