import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/order_timeline.dart';
import 'order_detail.dart';

class OrderScreen extends StatefulWidget {
  OrderScreen({Key? key}) : super(key: key);

  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int id = 1;
  int activeStep = 0;
  String radioButtonItem = 'one';
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
        title: 'My Orders',
        backgroundColor: kWhiteColor,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: [

                  SizedBox(height: 10),
                  OrderTimeLine(
                    press: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_) => OrderDetailScreen()));
                    }

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
                  OrderTimeLine(
                      press: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => OrderDetailScreen()));
                      }
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
                  OrderTimeLine(
                      press: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => OrderDetailScreen()));
                      }
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
                  SizedBox(height: 15),
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




