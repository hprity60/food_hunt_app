import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback press;
  const DefaultButton({
    Key? key,
   required this.text,
   required this.color,
   required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            color,
          ),
        ),
        onPressed: press,
        child: Text(text.toUpperCase()),
      ),
    );
  }
}
