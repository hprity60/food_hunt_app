import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/add_button.dart';
import 'package:hello/common/widgets/categories.dart';
import 'package:hello/common/widgets/horizontal_product_item.dart';

class ResturantInfoScreen extends StatefulWidget {
  @override
  _ResturantInfoScreenState createState() => _ResturantInfoScreenState();
}

class _ResturantInfoScreenState extends State<ResturantInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'ass/images/WhatsApp Image 2021-03-17 at 2.07 2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      left: 10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: kWhiteColor,
                            borderRadius: BorderRadius.circular(55),
                          ),
                          child: Icon(
                            Icons.arrow_back,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        'AVZ Takoyaki House - Urduja Village',
                        style: kHeading18,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.star_border,
                            color: kPrimaryColor,
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '4.8',
                                style: kHeading18,
                              ),
                              Text(
                                '19 people rated',
                                style: kHeading14.copyWith(
                                  color: kBlackColor.withOpacity(0.4),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 40,
                          width: 227,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            // color: Color(0xFF534848),
                          ),
                          child: TabBar(
                              unselectedLabelColor: kBlackColor,
                              labelColor: kPrimaryColor,
                              indicatorColor: kPrimaryColor,
                              tabs: [
                                Tab(
                                    child: Text(
                                  'About',
                                )),
                                Tab(text: 'Reviews'),
                              ]),
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 530,
                        child: TabBarView(children: [
                          Column(
                            children: [
                              Container(
                                height: 40,
                                width: double.infinity,
                                child: FittedBox(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 24,
                                        color: kPrimaryColor,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        'MCL building 69 Sikatune Urduja Village barangay',
                                        style: kHeading14,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Icon(
                                    Icons.access_time,
                                    size: 24,
                                    color: kPrimaryColor,
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Opening time',
                                        style: kHeading14,
                                      ),
                                      Text(
                                        '11.00 - 12.00',
                                        style: kHeading12.copyWith(
                                          color: kBlackColor.withOpacity(0.4),
                                        ),
                                      ),
                                      Text(
                                        '11.00 - 12.00',
                                        style: kHeading12.copyWith(
                                          color: kBlackColor.withOpacity(0.4),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '15 Reviews',
                                style: kHeading14.copyWith(
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              ReviewLists(),
                              SizedBox(height: 10),
                              ReviewLists(),
                              SizedBox(height: 10),
                              ReviewLists(),
                              SizedBox(height: 10),
                              ReviewLists(),
                              SizedBox(height: 10),
                            ],
                          ),
                        ]),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class ReviewLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 114,
      decoration: BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            color: kBlackColor.withOpacity(0.25),
          )
        ],
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Stom Thartz',
                  style: kHeading16,
                ),
                Spacer(),
                Icon(
                  Icons.star,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  color: kPrimaryColor,
                ),
                Icon(
                  Icons.star,
                  color: kPrimaryColor,
                ),
              ],
            ),
            Text(
              'Mar 12, 2021',
              style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7)),
            ),
            Text(
              'youn 1st and 2nd failed order ko pero binayaran ko sira yung bottle naya pangalawa yung takip sa tass di na sealed ng maayos , yung 3 at 4 pk na',
              style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7)),
            ),
          ],
        ),
      ),
    );
  }
}
