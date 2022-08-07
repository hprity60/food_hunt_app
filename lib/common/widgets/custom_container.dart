import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class CustomContainer extends StatefulWidget {
  final String text1;
  final String text2;
  final String image;
  CustomContainer(this.image, this.text1,this.text2);

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: kWhiteColor,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(widget.image,
                    height: 40),
                SizedBox(width: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(widget.text1,style: kHeading14),
                      ),
                      SizedBox(height: 2),
                      Text(widget.text2,style: kHeading12)
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
