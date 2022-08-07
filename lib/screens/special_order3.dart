import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/default_button.dart';
import 'package:hello/common/widgets/text_fields.dart';

enum WidgetMarker { pickup, pay, purchase }
class SpecialOffer3 extends StatefulWidget {
    @override
  _SpecialOffer3State createState() => _SpecialOffer3State();
}

class _SpecialOffer3State extends State<SpecialOffer3> with SingleTickerProviderStateMixin {
  int id = 1;
  String radioButtonItem = 'one';

  WidgetMarker selectedWidgetMarker = WidgetMarker.pickup;
  late AnimationController _controller;
  Animation? _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: 45,
                color: Color(0xFFC4C4C4),
                width:
                MediaQuery.of(context).size.width / 2,
                child: Text(
                  'P190.00',
                  style: kHeading16.copyWith(
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 45,
                color: kPrimaryColor,
                width:
                MediaQuery.of(context).size.width / 2,
                child: Text(
                  'Place Order',
                  style: kHeading16.copyWith(
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
          appBar: CustomAppBar(
            title: 'Special Order',
            backgroundColor: Color(0xFFC4C4C4).withOpacity(0.2),
          ),
          //backgroundColor: Color(0xFFC4C4C4).withOpacity(0.2),
          body: SingleChildScrollView(
            child: SafeArea(
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 114,
                      width: double.infinity,
                      color: kWhiteColor,
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
                                  Text('Baljit singh', style: kHeading18,),
                                  Text('Street Style Noodle Corner Lilano Branc', style: kHeading12,),
                                ],
                              )

                            ],
                          ),
                          Row(
                            children: [
                              Image.asset('ass/images/store Png 1.png'),
                              SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Home', style: kHeading18,),
                                  Text('Street Style Noodle Corner Lilano Branc', style: kHeading12,),
                                ],
                              )

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 165,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          color: kBlackColor.withOpacity(0.25),

                        )
                      ]
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Text('Select Service',style: kHeading14.copyWith(fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0, top: 0),

                          child: GestureDetector(
                           child: Row(
                              children: [
                                Radio(
                                  activeColor: kPrimaryColor,
                                  value: 1,
                                  groupValue: id,
                                  onChanged: (val) {
                                    setState(() {
                                      radioButtonItem = 'Pickup and Deliver';
                                      id = 1;
                                      selectedWidgetMarker = WidgetMarker.pickup;
                                    });
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pickup and Deliver',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '(no purchase payment or waiting needed)',style: kHeading12.copyWith(fontWeight: FontWeight.bold, color: kBlackColor.withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Text(
                                    'P 0.00',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0, top: 0),

                          child: GestureDetector(

                            child: Row(
                              children: [
                                Radio(
                                  activeColor: kPrimaryColor,
                                  value: 2,
                                  groupValue: id,
                                  onChanged: (val) {
                                    setState(() {
                                      radioButtonItem = 'Pay and Deliver';
                                      id = 2;
                                      selectedWidgetMarker = WidgetMarker.pay;
                                    });
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pay and Deliver',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '(no purchase payment or waiting needed)',style: kHeading12.copyWith(fontWeight: FontWeight.bold, color: kBlackColor.withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Text(
                                    'P 0.00',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 0, top: 0),

                          child: GestureDetector(
                            child: Row(
                              children: [
                                Radio(
                                  activeColor: kPrimaryColor,
                                  value: 3,
                                  groupValue: id,
                                  onChanged: (val) {
                                    setState(() {
                                      radioButtonItem = 'Purchase and Deliver';
                                      id = 3;
                                      selectedWidgetMarker = WidgetMarker.purchase;
                                    });
                                  },
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Purchase and Deliver',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '(no purchase payment or waiting needed)',style: kHeading12.copyWith(fontWeight: FontWeight.bold, color: kBlackColor.withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Text(
                                    'P 0.00',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                  FutureBuilder(
                    future: _playAnimation(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      return getCustomContainer();
                    },
                  ),
                  SizedBox(height: 10),
                ],
              ),

            ),
          )),
    );
  }

  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.pickup:
        return getGraphContainer();
      case WidgetMarker.pay:
        return getStatsContainer();
      case WidgetMarker.purchase:
        return getInfoContainer();
    }
    return getGraphContainer();
  }

  Widget getGraphContainer() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text('Add Delivery Instruction',style: kHeading14.copyWith(fontWeight: FontWeight.bold, color: kPrimaryColor),),
          SizedBox(height: 10),
          Container(
              height: 69,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: kBlackColor.withOpacity(0.25),

                    )
                  ]
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 5),
                        child: Text('Payment Mode',style: kHeading14.copyWith(fontWeight: FontWeight.bold),),
                      ),

                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          'Change',style: kHeading14.copyWith(fontWeight: FontWeight.bold, color: kPrimaryColor),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 0, top: 0),

                    child: Row(
                      children: [
                        Radio(
                          activeColor: kPrimaryColor,
                          value: 1,

                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'Cash on Delivery';
                              id = 1;
                            });
                          },
                        ),


                        Text(
                          'Cash on delivery',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                        ),


                      ],
                    ),
                  ),

                ],
              )),
        ],
      
    );
  }

  Widget getStatsContainer() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),

          Container(
              height: 105,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: kBlackColor.withOpacity(0.25),

                    )
                  ]
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Estimate amount',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
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
                          hintText: 'provide estimated order amount, Max P1500',
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),

                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      
    );
  }

  Widget getInfoContainer() {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),

          Container(
              height: 222,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: kBlackColor.withOpacity(0.25),

                    )
                  ]
              ),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Purchase order details',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    FittedBox(
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 230,
                            decoration: BoxDecoration(
                              border: Border.all(color: kBlackColor),
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFC4C4C4).withOpacity(0.1),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'provide estimated order amount, Max P1500',
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),

                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 50,
                            width: 78,
                            decoration: BoxDecoration(
                              border: Border.all(color: kBlackColor),
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFC4C4C4).withOpacity(0.1),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Qty',
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),

                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.cancel_rounded, color: kPrimaryColor,),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.add, color: kPrimaryColor,size: 20,),
                        Text('Add another Item',style: kHeading14.copyWith(fontWeight: FontWeight.bold, color: kPrimaryColor),),
                      ],
                    ),
                    SizedBox(height: 10),
                     Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Estimate amount',style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
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
                                    hintText: 'provide estimated order amount, Max P1500',
                                    enabledBorder: OutlineInputBorder(),
                                    focusedBorder: OutlineInputBorder(),

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                  ],
                ),
              )),
          SizedBox(height: 10),

        ],
      
    );
  }
}
