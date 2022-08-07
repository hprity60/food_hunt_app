import 'package:flutter/material.dart';
import 'package:hello/common/helpers/size_helper.dart';

class BillTable extends StatelessWidget {
  final String name;
  final double price;
  const BillTable({
    Key? key,
   required this.name,
   required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: kHeading16,
        ),
        Text(
          '\P${price}',
          style: kHeading16,
        ),
      ],
    );
  }
}
