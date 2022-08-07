import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class PaymentCardIcon extends StatelessWidget {
  final String hintText;
  final String labelText;
  
  final String icon;
  final TextInputType textInputType;
  final bool isIcon;
  const PaymentCardIcon({
    Key? key,
   required this.hintText,
   required this.labelText,
   required this.icon,
   required this.textInputType,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        height: 36,
        width: 330,
        decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: kBlackColor.withOpacity(0.25),
          )
        ]),
        child: TextFormField(
          // onChanged: onChanged,
          // validator: validator,
          // onFieldSubmitted: onSubmit,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintStyle: kHeading14.copyWith(fontWeight: FontWeight.bold),
            hintText: hintText,
            labelText: labelText,
            labelStyle: kHeading14.copyWith(fontWeight: FontWeight.bold),
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            suffixIcon: Image.asset(icon),
            enabledBorder: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor),
              gapPadding: 10,
            ),
          ),
        ),
      ),
    );
  }
}
