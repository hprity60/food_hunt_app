import 'package:flutter/material.dart';

class CustomTextBox extends StatefulWidget {
  final String hintText;
  final String labelText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final Function onChanged;
  final bool obscureText;
  final bool enabled;

  const CustomTextBox({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.textEditingController,
    required this.textInputType,
    required this.onChanged,
    required this.obscureText,
    required this.enabled,
  }) : super(key: key);

  @override
  _CustomTextBoxState createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        // height: 52,
        height: 55,
        // width: 282,
        width: double.infinity,
        child: TextField(
          controller: widget.textEditingController,
          keyboardType: widget.textInputType,
          obscureText: widget.obscureText,
          enabled: widget.enabled == null ? true : widget.enabled,
          decoration: InputDecoration(
            hintText: widget.hintText,

            // GoogleFonts.poppins(
            //   fontSize: 16,
            //   fontWeight: FontWeight.w400,
            //   color: kPrimaryColor,
            // ),
            // enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,

            enabledBorder: InputBorder.none,
            border: InputBorder.none,

            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(4)),
            //   //borderSide: BorderSide(width: 1, color: Colors.black54),
            //),
          ),
        ),
      ),
    );
  }
}
