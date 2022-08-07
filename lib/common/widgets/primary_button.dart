import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';

class PrimaryButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final Widget titleWidget;

  PrimaryButton({
   required this.title,
   required this.onPressed,
   required this.titleWidget,
  });
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(44),
      ),
      elevation: 0,
      onPressed: widget.onPressed,
      color: kPrimaryColor,
      child: Container(
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              widget.title,
              ),
            ),
          ),
        ),
      
    );
  }
}
