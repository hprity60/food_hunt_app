import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class ToppingLists extends StatefulWidget {
  final String text;

  const ToppingLists({
    Key? key,
    required this.text,

  }) : super(key: key);

  @override
  _ToppingListsState createState() => _ToppingListsState();
}

class _ToppingListsState extends State<ToppingLists> {
  String radioButtonItem = 'ONE';

  int id = 1;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      //width: 50,
      child: Row(
        children: [
          Checkbox(
            activeColor: kPrimaryColor,
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),

          Text(
           widget.text ,
            style: kHeading16.copyWith(
                color: Color(0xFF857B7B),
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}