import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

import 'add_button.dart';

class HorizonalProduct extends StatelessWidget {
  final String text1;
  final String text2;
  final double price;
  final String image;

  const HorizonalProduct({
    Key? key,
    required this.text1,
    required this.text2,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 110,
          width: double.infinity,
          decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 2,
              color: kBlackColor.withOpacity(0.2),
            )
          ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1, style: kHeading14),
                    Text(text2, style: kHeading12),
                    Row(
                      children: [
                        Text('\P${price}', style: kHeading14),
                        SizedBox(width: 80),
                        AddButton(
                          press: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Image.asset(
                    image,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 20, right: 10, child: Image.asset('ass/images/Group 111.png')),
      ],
    );
    /*Container(
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
        BoxShadow(
          offset: Offset(0, 2),
          blurRadius: 2,
          color: kBlackColor.withOpacity(0.2),
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1, style: kHeading14),
                Text(text2, style: kHeading12),
                Row(
                  children: [
                    Text('\P${price}', style: kHeading14),
                    SizedBox(width: 80),
                    AddButton(),
                  ],
                ),
              ],
            ),
            Container(
              height: 120,
              width: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                image,
              ),
            )
          ],
        ),
      ),
    );*/
  }
}
