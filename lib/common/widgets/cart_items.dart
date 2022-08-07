import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class CartItems extends StatelessWidget {
  final String product;
  final double price;
  final double discountPrice;
  const CartItems({
    Key? key,
    required this.product,
   required this.price,
   required this.discountPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product,
              style: kHeading14,
            ),
            SizedBox(height: 10),
            Text(
              'Remove',
              style: kHeading14.copyWith(
                  fontWeight: FontWeight.bold, color: kPrimaryColor),
            ),
          ],
        ),
        Container(
          alignment: Alignment.center,
          height: 23,
          width: 90,
          decoration: BoxDecoration(
            border: Border.all(color: kBlackColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.add,
                    size: 20,
                  )),
              Text(
                '1',
                style: kHeading18,
              ),
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.remove,
                    size: 20,
                  ))
            ],
          ),
        ),
        Column(
          children: [
            Text(
              '\P${price}',
              style:
                  kHeading12.copyWith(decoration: TextDecoration.lineThrough),
            ),
            Text(
              '\P${discountPrice}',
              style: kHeading14,
            ),
          ],
        )
      ],
    );
  }
}
