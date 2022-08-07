import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class OfferItems extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String image;

  final Function press;
  const OfferItems({
    Key? key,


   required this.press,required this.text1,required this.text2,required this.text3,required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 2),
              blurRadius: 2,
              color: Colors.black.withOpacity(0.2),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1,style: kHeading14.copyWith(color: Colors.black87, fontWeight: FontWeight.normal)),
                    Text(text2,style: kHeading14,),
                    Text(text3,style: kHeading14.copyWith(color: Colors.black87, fontWeight: FontWeight.normal)),
                  ],
                ),
                Spacer(),
                Image.asset(image, height: 50,width: 50,),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Valid Till Jun 30, 2020',style: kHeading16.copyWith(color: Colors.black38, fontWeight: FontWeight.normal)),
                Text('Use Now',style: kHeading16.copyWith(color: kPrimaryColor)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
