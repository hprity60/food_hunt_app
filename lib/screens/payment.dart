import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/default_button.dart';
import 'package:hello/common/widgets/payment_text_ffield.dart';
import 'package:hello/common/widgets/payment_text_field_icon.dart';

import 'edit_address.dart';

class PaymentScreen extends StatefulWidget {
  PaymentScreen({Key ?key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int id = 1;
  String radioButtonItem = 'one';
  //bool isSaved = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: kWhiteColor,
        title: 'Payment Method',
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        color: kBlackColor.withOpacity(0.25),
                        blurRadius: 4,
                      )
                    ],
                  ),
                  //() => _show(context)
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        //SvgPicture.asset('ass/icons/uil_card-atm.svg'),
                        SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Credit Or Debit Card',
                                style: kHeading14,
                              ),
                              SizedBox(height: 3),
                              Row(
                                children: [
                                  Image.asset('ass/images/download7 1.png'),
                                  SizedBox(width: 5),
                                  Image.asset('ass/images/download5 1.png'),
                                  SizedBox(width: 5),
                                  Image.asset('ass/images/download (2) 1.png'),
                                  SizedBox(width: 5),
                                  Image.asset('ass/images/mestro logo 1.png'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kPrimaryColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () => _show(context),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          color: kBlackColor.withOpacity(0.25),
                          blurRadius: 4,
                        )
                      ],
                    ),
                    //() => _show(context)
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Image.asset('ass/images/download5 1.png'),
                          SizedBox(width: 10),
                          Text(
                            '60003',
                            style: kHeading14.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_back_ios,
                            color: kBlackColor.withOpacity(0.35),
                          ),
                          Radio(
                            activeColor: kPrimaryColor,
                            value: 1,
                            groupValue: id,
                            onChanged: (val) {
                              setState(() {
                                radioButtonItem = '';
                                id = 1;
                              });
                            },
                          ),
                          Icon(
                            Icons.edit,
                            color: kPrimaryColor,
                          ),
                          Icon(
                            Icons.delete_outline_sharp,
                            color: kPrimaryColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    // boxShadow: [
                    //   BoxShadow(
                    //     offset: Offset(0, 4),
                    //     color: kBlackColor.withOpacity(0.25),
                    //     blurRadius: 4,
                    //   )
                    // ],
                  ),
                  //() => _show(context)
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        //SvgPicture.asset('ass/icons/ph_money-fill.svg'),
                        SizedBox(width: 10),
                        Text(
                          'Cash',
                          style:
                              kHeading14.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Radio(
                          activeColor: kPrimaryColor,
                          value: 2,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = '';
                              id = 2;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                //SizedBox(height: 10),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    // boxShadow: [
                    //   BoxShadow(
                    //     offset: Offset(0, 4),
                    //     color: kBlackColor.withOpacity(0.25),
                    //     blurRadius: 4,
                    //   )
                    // ],
                  ),
                  //() => _show(context)
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('ass/images/download (1) 1.png'),
                        SizedBox(width: 10),
                        Text(
                          'Paypal',
                          style:
                              kHeading14.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Radio(
                          activeColor: kPrimaryColor,
                          value: 3,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'Other';
                              id = 3;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    // boxShadow: [
                    //   BoxShadow(
                    //     offset: Offset(0, 4),
                    //     color: kBlackColor.withOpacity(0.25),
                    //     blurRadius: 4,
                    //   )
                    // ],
                  ),
                  //() => _show(context)
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Image.asset('ass/images/GCash 1.png'),
                        SizedBox(width: 10),
                        Text(
                          'GCash',
                          style:
                              kHeading14.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Radio(
                          activeColor: kPrimaryColor,
                          value: 4,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'Other';
                              id = 4;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  final _formKey = GlobalKey<FormState>();
  final List<String> errors = ['error'];
  bool isSaved = false;
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        //elevation: 10,
        backgroundColor: kWhiteColor,
        context: ctx,
        builder: (ctx) => Container(
              width: double.infinity,
              height: 344,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: kWhiteColor,
              ),
              // alignment: Alignment.center,

              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.cancel_sharp),
                        PaymentCardIcon(
                          
                          hintText: 'Card Number',
                          labelText: 'Card Number',
                          icon: 'ass/images/download5 1.png',
                          textInputType: TextInputType.number,
                        ),
                        Text(errors[0]),
                        Row(
                          children: [
                            Flexible(
                              child: PaymentCard(
                                hintText: 'MM/YY',
                                labelText: 'MM/YY',
                                //icon: 'ass/images/download5 1.png',
                                textInputType: TextInputType.datetime,
                              ),
                            ),
                            Flexible(
                              child: PaymentCard(
                                hintText: 'CVC',
                                labelText: 'CVC',
                                // icon: 'ass/images/download5 1.png',
                                textInputType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Checkbox(
                              activeColor: kPrimaryColor,
                              value: isSaved,
                              onChanged: (value) {
                                setState(() {
                                  isSaved = value!;
                                });
                              },
                            ),
                            Text(
                              'Save credit card info',
                              style: kHeading14.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: DefaultButton(
                            press: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                              }

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EditAddress()),
                              );
                            },
                            text: 'ADD Card',
                            color: kPrimaryColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.security),
                            SizedBox(width: 5),
                            Text(
                              "We'll Keep your payment details safe",
                              style: kHeading12.copyWith(
                                  color: kBlackColor.withOpacity(0.35)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
