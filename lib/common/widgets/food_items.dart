import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class FoodItems extends StatelessWidget {
  final String image;
  final String text;
  const FoodItems({
    Key? key,
   required this.image,
   required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children: [
          Container(

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 2),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(0.3),
                    )
                  ],
                  border: Border.all(color: Colors.black.withOpacity(0.3))),
              height: 118,
              width: 144,
            child: Column(
              children: [
                Image.asset(
                  image,
                  //height:40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(text),
                )
              ],
            ),),

          Positioned(
              top: 15,
              left: 0,
              child: Image.asset('ass/images/Group 52.png')),


        ],
      );
      /*Stack(
      overflow: Overflow.visible,
      children: [
        Positioned(
          top: 6,
          left: 0,
            child: Container(
              height: 40,
              width: 40,
              color: kPrimaryColor,
            ),
        ),
        Positioned(
          child: Container(
            alignment: Alignment.topLeft,
            height: 118,
            width: 144,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.3),
                  )
                ],
                border: Border.all(color: Colors.black.withOpacity(0.3))),
            child: Column(
              children: [
                Image.asset(
                  image,
                  //height:40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(text),
                )
              ],
            ),
          ),
        ),
      ],
    );*/
  }
}
