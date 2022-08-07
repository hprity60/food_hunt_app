import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/offer_items.dart';
import 'package:hello/common/widgets/topping_list.dart';

class ChooseOptionScreen extends StatefulWidget {
  ChooseOptionScreen({Key? key}) : super(key: key);

  @override
  _ChooseOptionScreenState createState() => _ChooseOptionScreenState();
}

class _ChooseOptionScreenState extends State<ChooseOptionScreen> {

  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Chicken Pizza',
        backgroundColor: kWhiteColor,
      ),
      bottomNavigationBar: Container(
        height: 35,
        width: double.infinity,
        color: kPrimaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Items Total P95.00',style: kHeading18.copyWith(color: kWhiteColor),),
              Text('Add Items',style: kHeading18.copyWith(color: kWhiteColor)),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text('      Chicken pizza comes with fresh pineapple and \n       bellpepper topping extra topping of cheese', style: kHeading12.copyWith(color: Colors.black38,))
    ,
                  SizedBox(height: 10),
                  Text('      Size', style: kHeading16),
                  Text('        Choose 1 size', style: kHeading12.copyWith(color: Colors.black38,)),
                  SizedBox(height: 5),

                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //SizedBox(height: 5),

                        Row(
                          children: [
                            Container(
                              height: 10, //Make it equal to height of radio button
                              width: 50,  //Make it equal to width of radio button
                              //padding: EdgeInsets.only(right: 0),
                              child: Radio(
                                activeColor: kPrimaryColor,
                                value: 1,
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Small';
                                    id = 1;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'Small',style: kHeading16.copyWith(color: Color(0xFF857B7B),fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),

                        Row(
                          children: [
                            Container(
                              height: 10, //Make it equal to height of radio button
                              width: 50,
                              child: Radio(
                                activeColor: kPrimaryColor,
                                value: 2,
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Medium- add P10.00';
                                    id = 2;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'Medium - add P10.00',style: kHeading16.copyWith(color: Color(0xFF857B7B),fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              height: 10, //Make it equal to height of radio button
                              width: 50,
                              child: Radio(
                                activeColor: kPrimaryColor,
                                value: 3,
                                groupValue: id,
                                onChanged: (val) {
                                  setState(() {
                                    radioButtonItem = 'Largr - add P10.00';
                                    id = 3;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'Largr - add P10.00',style: kHeading16.copyWith(color: Color(0xFF857B7B),fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),

                      ]
                  ),
                  SizedBox(height: 10),
                  Text('      Toppings', style: kHeading16),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      ToppingLists(
                        text: 'Extra Cheese - add P10.00',
                      ),
                      ToppingLists(
                        text: 'Extra bellpepper - add P10.00',
                      ),
                      ToppingLists(
                        text: 'Extra Cheese - add P10.00',
                      ),
                      ToppingLists(
                        text: 'Extra bellpepper - add P10.00',
                      ),
                      ToppingLists(
                        text: 'Extra Cheese - add P10.00',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('      Drinks', style: kHeading16),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      ToppingLists(
                        text: 'Coke - add P10.00',
                      ),
                      ToppingLists(
                        text: 'Sprite - add P10.00',
                      ),
                      ToppingLists(
                        text: 'Fanta - add P10.00',
                      ),

                    ],
                  ),

                ],

              ),
            ),
          )),
    );
  }
}
