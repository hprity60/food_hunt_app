import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/bill_table.dart';
import 'package:hello/common/widgets/cart_items.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/screens/payment.dart';

import 'apply_coupon.dart';

class CartScreen extends StatefulWidget {
  VoidCallback callback1;
  Function(String) func1;
  CartScreen({required this.callback1, required this.func1});

  @override
  _CartScreenState createState() => _CartScreenState(
      callback2: () {
        callback1();
      }, func2: (string) {
    func1(string);
  }
  );
}

class _CartScreenState extends State<CartScreen> {
  VoidCallback callback2;
  Function(String) func2;
  _CartScreenState({required this.callback2, required this.func2});
  @override
  int id = 1;
  String radioButtonItem = 'one';
  bool isChecked = false;
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: CustomAppBar(
            title: 'Cart',
            backgroundColor: Color(0xFFC4C4C4).withOpacity(0.16),
          ),
          backgroundColor: Color(0xFFC4C4C4).withOpacity(0.15),
          bottomNavigationBar: Row(
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
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 10),
                        child: CartItems(
                          product: 'Chicken Tikka Pizza',
                          price: 80.00,
                          discountPrice: 100.00,
                        ),
                      ),
                    ),
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
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 5, right: 5, top: 10),
                        child: CartItems(
                          product: 'Chicken Tikka Pizza',
                          price: 80.00,
                          discountPrice: 100.00,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          'Add Delivery Instruction',
                          style: kHeading14.copyWith(color: kPrimaryColor),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 69,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: kWhiteColor,
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Text(
                                      'Payment Mode',
                                      style: kHeading16.copyWith(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(width: 115),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => PaymentScreen(),
                                          ));
                                    },
                                    child: Text('Change',
                                        style: kHeading14.copyWith(
                                            color: kPrimaryColor)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                    activeColor: kPrimaryColor,
                                    value: 1,
                                    groupValue: id,
                                    onChanged: (val) {
                                      setState(() {
                                        radioButtonItem = 'Cash On Delivery';
                                        id = 1;
                                      });
                                    },
                                  ),
                                  Text(
                                    'Cash On Delivery',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 40,
                      color: kWhiteColor,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Checkbox(
                            activeColor: kPrimaryColor,
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          Text(
                            'Use Reward Point ( 50.00)',
                            style: kHeading14.copyWith(
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CouponScreen()),
                        );
                      },
                      child: Container(
                        height: 40,
                        color: kWhiteColor,
                        width: double.infinity,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Image.asset(
                              'ass/images/offer.png',
                              height: 24,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Apply Coupon',
                              style: kHeading14,
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: kBlackColor.withOpacity(0.3),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: kPrimaryColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TabBar(
                            unselectedLabelColor: kBlackColor,
                            indicator: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            tabs: [
                              Tab(
                                  child: Text(
                                'Delivery',
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              )),
                              Tab(text: 'Pick Up'),
                            ]),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 400,
                      child: TabBarView(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () => _show(context),
                              child: Container(
                                height: 40,
                                width: double.infinity,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Icon(Icons.delivery_dining, size: 40),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Select Delivery',
                                          style: kHeading14,
                                        ),
                                        Text(
                                          '21- Mar - 2021 08:00AM To 06:00PM',
                                          style: kHeading12.copyWith(
                                              color:
                                              kBlackColor.withOpacity(0.7)),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: kBlackColor.withOpacity(0.3),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Bill',
                                style:
                                kHeading14.copyWith(color: kPrimaryColor),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 188,
                              decoration: BoxDecoration(
                                border: Border.all(color: kBlackColor),
                              ),
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    BillTable(
                                      name: 'Order Value',
                                      price: 100.00,
                                    ),
                                    Divider(),
                                    BillTable(
                                      name: 'Delivery Charges',
                                      price: 100.00,
                                    ),
                                    Divider(),
                                    BillTable(
                                      name: 'Discounts',
                                      price: 100.00,
                                    ),
                                    Divider(),
                                    BillTable(
                                      name: 'Tax',
                                      price: 30.00,
                                    ),
                                    Divider(),
                                    BillTable(
                                      name: 'To pay',
                                      price: 190.00,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () => _show(context),
                              child: Container(

                                height: 40,
                                width: double.infinity,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Icon(Icons.delivery_dining, size: 40),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Select Delivery',
                                          style: kHeading14,
                                        ),
                                        Text(
                                          '21- Mar - 2021 08:00AM To 06:00PM',
                                          style: kHeading12.copyWith(
                                              color:
                                                  kBlackColor.withOpacity(0.7)),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: kBlackColor.withOpacity(0.3),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Bill',
                                style:
                                    kHeading14.copyWith(color: kPrimaryColor),
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 188,
                              decoration: BoxDecoration(
                                border: Border.all(color: kBlackColor),
                              ),
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    BillTable(
                                      name: 'Order Value',
                                      price: 100.00,
                                    ),
                                    Divider(),
                                    BillTable(
                                      name: 'Delivery Charges',
                                      price: 100.00,
                                    ),
                                    Divider(),
                                    BillTable(
                                      name: 'Discounts',
                                      price: 100.00,
                                    ),
                                    Divider(),
                                    BillTable(
                                      name: 'Tax',
                                      price: 30.00,
                                    ),
                                    Divider(),
                                    BillTable(
                                      name: 'To pay',
                                      price: 190.00,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ]),
                    ),

                  ],
                ),
              ),
            ),
          )),
    );
  }
  void _show(BuildContext ctx) {
    showModalBottomSheet(
      //elevation: 10,
        backgroundColor: kWhiteColor,
        context: ctx,
        builder: (ctx) => Container(
          width: double.infinity,
          height: 284,

          // alignment: Alignment.center,

          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),

                  ],
                ),

            ),
          ),
        ));
  }
}


class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
@override
  void initState() {
  _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      height: 31,
      width: 227,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        // color: Color(0xFF534848),
      ),
      /*child: Text(
                                'Delivery is not available',
                                style: kHeading14.copyWith(color: kWhiteColor),
                              ),*/
      child: TabBar(
        controller: _tabController,
        unselectedLabelColor: kBlackColor,
        labelColor: kPrimaryColor,
        indicatorColor: kPrimaryColor,
        tabs: [
          Text('Delivery'),
          Text('Pickup'),

        ],
      ),
    );
  }
}
