import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/add_button.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/store_category.dart';
import 'package:hello/common/widgets/horizontal_product_item.dart';

import 'offer.dart';

class ProductGridView extends StatefulWidget {
  ProductGridView({Key? key}) : super(key: key);

  @override
  _ProductGridViewState createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deliver to'.toUpperCase(),style: kHeading12),
                          SizedBox(height: 5),
                          Text(
                            'block 1 lot 13 mirabela',
                            style: kHeading12.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'ass/images/offer.png',
                        height: 30,
                        width: 30,
                        color: kPrimaryColor,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OfferScreen()),
                            );
                          },
                          child: Text('Offers', style: kHeading14,)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: 40,
                      child: StoreCategory()),
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductGridView()),
                          );
                        },
                        child: Container(

                            decoration: BoxDecoration(
                                color: kWhiteColor,
                                border: Border.all(color: Color(0xFFC4C4C4)),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Image.asset('ass/images/WhatsApp Image 2021-03-17 at 2.07 1 (1).png'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 10,right: 10, bottom: 3),
                                  child: Text('Street style pizza'.toUpperCase(), style: kHeading14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, bottom: 3,right: 10),

                                  child: Row(
                                    children: [
                                      Text('Open hour 11:30 am to 11:30 pm',style: kHeading12.copyWith(color: kBlackColor.withOpacity(0.7)),),
                                      Spacer(),
                                      Text('1.9 km',style: kHeading14),
                                      SizedBox(width: 2),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 24, width: 24, color: kWhiteColor,
                                        child: Icon(Icons.star, color: Colors.yellow,),),
                                      Text('4.9',style: kHeading14),
                                    ],
                                  ),
                                )

                              ],
                            )),
                      ),

                      Positioned(
                          top: 15,
                          left: 0,
                          child: Image.asset('ass/images/Group 52.png')),


                    ],
                  ),
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductGridView()),
                          );
                        },
                        child: Container(

                            decoration: BoxDecoration(
                                color: kWhiteColor,
                                border: Border.all(color: Color(0xFFC4C4C4)),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Image.asset('ass/images/WhatsApp Image 2021-03-17 at 2.07 1 (1).png'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 10,right: 10, bottom: 3),
                                  child: Text('Street style pizza'.toUpperCase(), style: kHeading14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, bottom: 3,right: 10),

                                  child: Row(
                                    children: [
                                      Text('Open hour 11:30 am to 11:30 pm',style: kHeading12.copyWith(color: kBlackColor.withOpacity(0.7)),),
                                      Spacer(),
                                      Text('1.9 km',style: kHeading14),
                                      SizedBox(width: 2),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 24, width: 24, color: kWhiteColor,
                                        child: Icon(Icons.star, color: Colors.yellow,),),
                                      Text('4.9',style: kHeading14),
                                    ],
                                  ),
                                )

                              ],
                            )),
                      ),

                      Positioned(
                          top: 15,
                          left: 0,
                          child: Image.asset('ass/images/Group 52.png')),


                    ],
                  ),
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductGridView()),
                          );
                        },
                        child: Container(

                            decoration: BoxDecoration(
                                color: kWhiteColor,
                                border: Border.all(color: Color(0xFFC4C4C4)),
                                borderRadius: BorderRadius.circular(15)
                            ),
                            height: 200,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Image.asset('ass/images/WhatsApp Image 2021-03-17 at 2.07 1 (1).png'),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, top: 10,right: 10, bottom: 3),
                                  child: Text('Street style pizza'.toUpperCase(), style: kHeading14),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10, bottom: 3,right: 10),

                                  child: Row(
                                    children: [
                                      Text('Open hour 11:30 am to 11:30 pm',style: kHeading12.copyWith(color: kBlackColor.withOpacity(0.7)),),
                                      Spacer(),
                                      Text('1.9 km',style: kHeading14),
                                      SizedBox(width: 2),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 24, width: 24, color: kWhiteColor,
                                        child: Icon(Icons.star, color: Colors.yellow,),),
                                      Text('4.9',style: kHeading14),
                                    ],
                                  ),
                                )

                              ],
                            )),
                      ),

                      Positioned(
                          top: 15,
                          left: 0,
                          child: Image.asset('ass/images/Group 52.png')),


                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          )),
    );
  }
}


