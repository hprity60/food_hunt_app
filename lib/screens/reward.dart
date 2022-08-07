import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/add_button.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/custom_text_field.dart';
import 'package:hello/common/widgets/default_button.dart';
import 'package:hello/common/widgets/horizontal_product_item.dart';

class RewardScreen extends StatefulWidget {
  RewardScreen({Key? key}) : super(key: key);

  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                //color: kBlackColor,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5 - 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            kPrimaryColor.withOpacity(0.9),
                            kPrimaryColor.withOpacity(0.7),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          height: 96,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(5, 4),
                                blurRadius: 40,
                                color: kBlackColor.withOpacity(0.5),
                              )
                            ],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Y567tg4253".toUpperCase(),
                                      textAlign: TextAlign.center,
                                      style: kHeading24.copyWith(
                                          color: kPrimaryColor),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.copy,
                                        color: kPrimaryColor,
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                                Text("Share your refferal code",
                                    textAlign: TextAlign.center,
                                    style: kHeading16),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_sharp,
                          color: kWhiteColor,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Reword Points",
                          textAlign: TextAlign.center,
                          style: kHeading14.copyWith(color: kWhiteColor),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 70,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Invite your Friends, Earn a Free Points",
                          textAlign: TextAlign.center,
                          style: kHeading30.copyWith(color: kWhiteColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                height: 59,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: kBlackColor.withOpacity(0.25),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        "Current Reward",
                        style: kHeading16,
                      ),
                      Spacer(),
                      Text(
                        "P 50.00",
                        style: kHeading16,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Start Sharing with',
                style: kHeading16,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'ass/images/insta logo 1.png',
                    height: 50,
                  ),
                  Image.asset(
                    'ass/images/insta logo 1.png',
                    height: 50,
                  ),
                  Image.asset(
                    'ass/images/insta logo 1.png',
                    height: 50,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'ass/images/insta logo 1.png',
                    height: 50,
                  ),
                  Image.asset(
                    'ass/images/insta logo 1.png',
                    height: 50,
                  ),
                  Image.asset(
                    'ass/images/insta logo 1.png',
                    height: 50,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: DefaultButton(
                  press: () {},
                  text: 'More Option',
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  'You can earn reward by sharing FOODHUNT app with your  Friends and family , share now and u will get rewards when  They will made First order (min 400.00)',
                  style: kHeading14,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
            ],
          )
        ],
      )
              /*Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 292,
                        width: double.infinity,

                        decoration: BoxDecoration(
                          */ /*image: DecorationImage(
                            image: AssetImage('ass/images/logo.png')
                          ),*/ /*
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              kPrimaryColor.withOpacity(0.9),
                              kPrimaryColor.withOpacity(0.7),
                            ],
                          )
                        ),
                        child: Column(
                          children: [
                            Row(

                              children: [

                                IconButton(
                                  icon: Icon(
                                    Icons.arrow_back_sharp,
                                    color: kWhiteColor,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),

                              ],
                            ),
                            SizedBox(height: 30),
                          ],
                        )
                      ),
                      Container(
                        height: 96,
                        width: 290,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(5,4),
                              blurRadius: 40,
                              color: kBlackColor.withOpacity(0.5),
                            )
                          ],
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                              child: Text('')),
                          Positioned(
                              top: 35,
                              left: 10,
                              child:  Container(
                                height: 96,
                                width: 290,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(5,4),
                                      blurRadius: 40,
                                      color: kBlackColor.withOpacity(0.5),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),),
                        ],
                      ),
                      SizedBox(height: 20),
                      Stack(
                        children: [
                          GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Container(
                                // height: 214,
                                //color: kBlackColor,
                                //width: double.infinity / 2,
                                // color: kPrimaryColor,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                        'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png'),
                                    Text('Chiken Tikka Pizaa  With Extra Cheese With Coke',
                                        style: kHeading9.copyWith(
                                          color: kBlackColor.withOpacity(0.7),
                                        )),
                                    Text(
                                      'Chiken Tikka With  Gravy',
                                      style: kHeading14,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('\P${100.0}'),
                                        AddButton(),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            },
                            itemCount: 3,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.72,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                          ),

                          Positioned(
                              top: 15,
                              left: 5,
                              child: Image.asset('ass/images/Group 111.png')),
                        ],
                      ),

                      SizedBox(height: 15),
                      HorizonalProduct(
                        text1: 'Free Delivery',
                        text2:
                        'Chicken Tikka With Extra \nCheeseand Think and gravy \nand Coke and will be deliver \nin 30 mints',
                        image: 'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png',
                        price: 100.0,
                      ),
                      SizedBox(height: 20),
                      HorizonalProduct(
                        text1: 'Free Delivery',
                        text2:
                        'Chicken Tikka With Extra \nCheeseand Think and gravy \nand Coke and will be deliver \nin 30 mints',
                        image: 'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png',
                        price: 100.0,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ],
              ),*/

              )),
    );
  }
}
