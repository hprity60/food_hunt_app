import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class AddButton extends StatelessWidget {
  final VoidCallback press;
  const AddButton({
    Key? key, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 20,
        width: 45,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 2,
              color: kBlackColor.withOpacity(0.2),
            )
          ],
          color: kWhiteColor,
          // border: Border.all(color: kBlackColor),
        ),
        child: Text(
          'Add',
          style: kHeading14.copyWith(color: kPrimaryColor),
        ),
      ),
    );
  }
}
