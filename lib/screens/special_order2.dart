import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/default_button.dart';
import 'package:hello/screens/special_order3.dart';

class SpecialOffer2 extends StatefulWidget {
  @override
  _SpecialOffer2State createState() => _SpecialOffer2State();
}

class _SpecialOffer2State extends State<SpecialOffer2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: CustomAppBar(
            title: 'Purchase Information',
            backgroundColor: kWhiteColor,
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('ass/images/store Png 1.png'),
                        SizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: kHeading18,
                            ),
                            Text(
                              'Street Style Noodle Corner Lilano Branc',
                              style: kHeading12,
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          'Change',
                          style: kHeading12.copyWith(color: kPrimaryColor),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: kBlackColor),
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFC4C4C4).withOpacity(0.1),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Store name, address landmark etc',
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: kBlackColor),
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFC4C4C4).withOpacity(0.1),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Sender name',
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: kBlackColor),
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFC4C4C4).withOpacity(0.1),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Mobile Number',
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          DefaultButton(
                            text: 'Add',
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SpecialOffer3()));
                            },
                            color: kPrimaryColor,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
