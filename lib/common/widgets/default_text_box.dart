import 'package:flutter/material.dart';

class DefaultTextBox extends StatefulWidget {
  final String hintText;
  final String labelText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final Function onChanged;
  final bool obscureText;
  final bool enabled;

  const DefaultTextBox(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.textEditingController,
      required this.textInputType,
      required this.onChanged,
      required this.obscureText,
      required this.enabled})
      : super(key: key);

  @override
  _DefaultTextBoxState createState() => _DefaultTextBoxState();
}

class _DefaultTextBoxState extends State<DefaultTextBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: widget.textEditingController,
          keyboardType: widget.textInputType,
          obscureText: widget.obscureText,
          enabled: widget.enabled == null ? true : widget.enabled,
          decoration: InputDecoration(
            hintText: widget.hintText,
            ),

            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(4)),
            //   borderSide: BorderSide(width: 1, color: Colors.black54),
            // ),
            // disabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(4)),
            //   borderSide: BorderSide(width: 1, color: Colors.grey),
            // ),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(4)),
            //   borderSide: BorderSide(width: 1, color: Colors.black12),
            // ),
          ),
        ),
    );
  }
}
