import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/order_timeline.dart';
import 'package:hello/screens/language.dart';
import 'package:hello/screens/order.dart';
import 'package:hello/screens/reward.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({Key ?key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int activeStep = 0;
  int _processIndex = 0;

  Color getColor(int index) {
    if (index == _processIndex) {
      return inProgressColor;
    } else if (index < _processIndex) {
      return completeColor;
    } else {
      return todoColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Account',
        backgroundColor: Color(0xFFEFE6E6),
      ),
      backgroundColor: Color(0xFFEFE6E6),
     /* floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          setState(() {
            _processIndex = (_processIndex + 1) % _processes.length;
          });
        },
        backgroundColor: inProgressColor,
      ),*/

      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    color: kWhiteColor,
                    height: 72,
                    width: double.infinity,
                    child:
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),

                      child: Row(
                        children: [
                          SvgPicture.asset('ass/icons/Group 112.svg'),
                          SizedBox(width: 10),

                          Column

                            (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text('Baljit', style: kHeading14,),
                                  SizedBox(width: 165),
                                  Text('Edit', style: kHeading14.copyWith(
                                      color: kPrimaryColor),),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text('999227140', style: kHeading14.copyWith(
                                  color: kBlackColor.withOpacity(0.3)),),
                            ],
                          ),


                        ],


                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 310,
                    width: double.infinity,
                    color: kWhiteColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),

                      child: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'ass/icons/ri_inbox-archive-line.svg'),
                              SizedBox(width: 20),
                              Text('My Orders', style: kHeading14,),
                              Spacer(),
                              IconButton(icon: Icon(Icons.arrow_forward_ios,
                                color: kBlackColor.withOpacity(0.3),),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (_) => OrderScreen()));
                                  })
                              //Icon(Icons.arrow_forward_ios, color: kBlackColor.withOpacity(0.3),),
                            ],
                          ),

                          // SizedBox(height: 25),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'ass/icons/bx_bxs-coin-stack.svg'),
                              SizedBox(width: 20),
                              Text('Rewards Point', style: kHeading14,),
                              Spacer(),
                              IconButton(icon: Icon(Icons.arrow_forward_ios,
                                color: kBlackColor.withOpacity(0.3),),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (_) => RewardScreen()));

                                  })
                              //Icon(Icons.arrow_forward_ios, color: kBlackColor.withOpacity(0.3),),
                            ],
                          ),
                          //SizedBox(height: 25),
                          Row(
                            children: [
                              SvgPicture.asset('ass/icons/Group.svg'),
                              SizedBox(width: 20),
                              Text('Address', style: kHeading14,),
                              Spacer(),
                              IconButton(icon: Icon(Icons.arrow_forward_ios,
                                color: kBlackColor.withOpacity(0.3),),
                                  onPressed: () {})
                              //Icon(Icons.arrow_forward_ios, color: kBlackColor.withOpacity(0.3),),
                            ],
                          ),
                          //SizedBox(height: 25),
                          Row(
                            children: [
                              Image.asset(
                                'ass/images/offer.png',

                              ),
                              SizedBox(width: 20),
                              Text('Offers', style: kHeading14,),
                              Spacer(),
                              IconButton(icon: Icon(Icons.arrow_forward_ios,
                                color: kBlackColor.withOpacity(0.3),),
                                  onPressed: () {})
                              //Icon(Icons.arrow_forward_ios, color: kBlackColor.withOpacity(0.3),),
                            ],
                          ),

                          //SizedBox(height: 25),

                          Row(
                            children: [
                              SvgPicture.asset('ass/icons/codicon_key.svg'),
                              SizedBox(width: 20),
                              Text('Change Password', style: kHeading14,),
                              Spacer(),
                              IconButton(icon: Icon(Icons.arrow_forward_ios,
                                color: kBlackColor.withOpacity(0.3),),
                                  onPressed: () {})
                              //Icon(Icons.arrow_forward_ios, color: kBlackColor.withOpacity(0.3),),
                            ],
                          ),
                          //SizedBox(height: 25),
                          Row(
                            children: [
                              SvgPicture.asset('ass/icons/cil_language.svg'),
                              SizedBox(width: 20),
                              Text('Language', style: kHeading14,),
                              Spacer(),
                              IconButton(icon: Icon(Icons.arrow_forward_ios,
                                color: kBlackColor.withOpacity(0.3),),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (_) => LanguageScreen()));
                                  })
                              //Icon(Icons.arrow_forward_ios, color: kBlackColor.withOpacity(0.3),),
                            ],
                          ),

                          //SizedBox(height: 25),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Recent Order'),
                  ),

                  OrderTimeLine(
                    press: (){},
                  ),
                  SizedBox(height: 2),
                  Container(
                    height: 30,
                    width: double.infinity,
                    color: kWhiteColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 90,
                            decoration: BoxDecoration(
                              color: kPrimaryColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: kPrimaryColor),
                            ),
                            child: Text('Delivered', style: kHeading14.copyWith(color: kPrimaryColor),),
                          ),
                          Spacer(),
                          Icon(Icons.replay, color: kPrimaryColor,),
                          Text('Repeat Order', style: kHeading14.copyWith(color: kPrimaryColor),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 32,
                          width: 250,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text('Logout', style: kHeading14.copyWith(
                              color: kWhiteColor),),

                        ),
                      ],
                    ),
                  ),
              ],
              ),
            ),
          )),
    );
  }

  final _processes = [
    'Pending',
    'Confirmed',
    'Preparing',
    'Dispatched',
    'Delivered',
  ];
  }

