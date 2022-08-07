import 'package:flutter/material.dart';

class CustomSearchTextBox extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final double textSize;
  final Color borderColor;

  const CustomSearchTextBox({
    Key? key,
    required this.text,
   required this.onPressed,
   required this.textColor,
    this.borderColor = Colors.black12,
    this.textSize = 14.4,
  }) : super(key: key);
  @override
  _CustomSearchTextBoxState createState() => _CustomSearchTextBoxState();
}

class _CustomSearchTextBoxState extends State<CustomSearchTextBox> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      onPressed: widget.onPressed,
      child: Container(
        width: 280,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          // color: Colors.white,
          border: (widget.borderColor != null)
              ? Border.all(
                  color: Colors.black12,
                )
              : null,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12.0,
            bottom: 12.0,
            left: 17,
            right: 17,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
              ),
              //Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ),
    );
  }
}
