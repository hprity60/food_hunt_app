import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class ProfileLists extends StatefulWidget {
  final String image;
  final String text;
  final Function press;
  ProfileLists(this.text,this.image, this.press);

  @override
  _ProfileListsState createState() => _ProfileListsState();
}

class _ProfileListsState extends State<ProfileLists> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SvgPicture.asset(widget.image),
        SizedBox(width: 20),
        Text(widget.text,style: kHeading14,),
        Spacer(),
        IconButton(icon:Icon(Icons.arrow_forward_ios, color: kBlackColor.withOpacity(0.3),), onPressed: (){})
        //Icon(Icons.arrow_forward_ios, color: kBlackColor.withOpacity(0.3),),
      ],
    );
  }
}