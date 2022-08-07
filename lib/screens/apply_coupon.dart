import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';

class CouponScreen extends StatefulWidget {
  CouponScreen({Key? key}) : super(key: key);

  @override
  _CouponScreenState createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Apply Coupon',
        backgroundColor: kWhiteColor,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 155,
                width: double.infinity,
                decoration: BoxDecoration(
                    //border: Border.all(color: Colors.black.withOpacity(0.3)),
                    //borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.25),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10, right: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 32,
                            width: 190,
                            color: kPrimaryColor,
                            child: Text(
                              'breakfasrbucket2020',
                              style: kHeading14.copyWith(
                                  color: kWhiteColor),
                            ),
                          ),
                          Text(
                            'apply'.toUpperCase(),
                            style: kHeading14.copyWith(
                                color: kPrimaryColor),
                          ),

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [

                            ],
                          ),
                          Text(
                              'Or some clients add instruction.\nPlease dont enter home  without bell we \nhave dog.Get change for 1000 and extra\nsauce and 1 dip for garlic mayo'),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Valid Till 22 Mar-2021',style: kHeading16),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                height: 165,
                width: 260,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 25,
                        color: kBlackColor.withOpacity(0.25),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [Text('Sorry ', style: kHeading18,),
                      SizedBox(height: 10),
                      Text('This Coupon is valid ',style: kHeading16),
                      SizedBox(height: 10),

                      Text('On minimum purchase of 400.00',
                          style: kHeading16),
                      SizedBox(height: 10),
ElevatedButton(
  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kPrimaryColor),),
  onPressed: (){}, child: Text('OK'),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
