import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/add_button.dart';
import 'package:hello/common/widgets/categories.dart';
import 'package:hello/common/widgets/horizontal_product_item.dart';
import 'package:hello/screens/product_choose_option.dart';
import 'package:hello/screens/resturant_info.dart';

class Page2 extends StatefulWidget {
  VoidCallback callback1;
  Function(String) func1;
  Page2({required this.callback1, required this.func1});
  @override
  State<StatefulWidget> createState() {
    return Page2State(callback2: () {
      callback1();
    }, func2: (string) {
      func1(string);
    });
  }
}

class Page2State extends State<Page2> {
  VoidCallback callback2;
  Function(String) func2;
  Page2State({required this.callback2, required this.func2});
  @override
  Widget build(BuildContext context) {
    return MenuScreen(callback3: () {
      callback2();
    }, func3: (string) {
      func2(string);
    });
  }
}
enum WidgetMarker { pizza, chicken , small }
class MenuScreen extends StatefulWidget {

  VoidCallback callback3;
  Function(String) func3;
  MenuScreen({required this.callback3,required this.func3});
  int selectedIndex = 0;
  @override
  _MenuScreenState createState() => _MenuScreenState(
      callback4: () {
        callback3();
      }, func4: (string) {
    func3(string);
  }
  );
}

class _MenuScreenState extends State<MenuScreen> with SingleTickerProviderStateMixin {
  VoidCallback callback4;
  Function(String) func4;
  _MenuScreenState({required this.callback4,required this.func4});

  WidgetMarker selectedWidgetMarker = WidgetMarker.pizza;
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
    return Scaffold(
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
                      onTap: (){
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
                  Positioned(
                    top: 0,
                    left: 0,
                    right:0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                        alignment: Alignment.center,
                        height: 35,
                        width: 220,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Text(
                          'Pizza Point',
                          style: kHeading14.copyWith(color: kPrimaryColor),
                        )),
                  ),
                  Positioned(
                    top: 25,
                    right: 10,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => ResturantInfoScreen()));
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: kWhiteColor,
                          borderRadius: BorderRadius.circular(55),
                        ),
                        child: Icon(
                          Icons.error_outline,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 4),
                    color: kBlackColor.withOpacity(0.25),
                    blurRadius: 4,
                  )
                ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Check for available offers',
                        style: kHeading18.copyWith(color: kPrimaryColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 4),
                    color: kBlackColor.withOpacity(0.25),
                    blurRadius: 4,
                  )
                ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {

                            selectedWidgetMarker = WidgetMarker.pizza;
                          });
                        },
                        child: Column(
                          children: [
                            Text('Pizza', style: kHeading18.copyWith(
                              fontSize:  18, color: (selectedWidgetMarker == WidgetMarker.pizza) ? kPrimaryColor : kBlackColor),

                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 3,
                              width: 50,
                              color:
                               kPrimaryColor ,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedWidgetMarker = WidgetMarker.chicken;
                          });
                        },
                        child: Column(
                          children: [
                            Text('Chicken Pizza', style: kHeading18.copyWith(
                                fontSize:  18, color: (selectedWidgetMarker == WidgetMarker.chicken) ? kPrimaryColor : kBlackColor),

                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 3,
                              width: 50,
                              color:
                              kPrimaryColor ,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedWidgetMarker = WidgetMarker.small;
                          });
                        },
                        child: Column(
                          children: [
                            Text('Pizza', style: kHeading18.copyWith(
                                fontSize:  18, color: (selectedWidgetMarker == WidgetMarker.small) ? kPrimaryColor : kBlackColor),

                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 3,
                              width: 50,
                              color:
                              kPrimaryColor ,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              ),
              FutureBuilder(
                future: _playAnimation(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return getCustomContainer();
                },
              ),

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
      case WidgetMarker.pizza:
        return getGraphContainer();
      case WidgetMarker.chicken:
        return getStatsContainer();
      case WidgetMarker.small:
        return getInfoContainer();
    }
    return getGraphContainer();
  }

  Widget getGraphContainer() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Row(
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: kPrimaryColor,
                ),
                SizedBox(width: 10),
                Text(
                  'Hot Selling',
                  style: kHeading24,
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Most ordered items',
              style: kHeading14.copyWith(
                color: kBlackColor.withOpacity(0.4),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Pizza',
              style: kHeading24,
            ),
            SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  // height: 500,
                  //width: double.infinity / 2,
                  // color: kPrimaryColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Image.asset(
                          'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png'),
                      Text(
                          'Chiken Tikka Pizaa  With Extra Cheese With Coke',
                          style: kHeading12.copyWith(
                            color: kBlackColor.withOpacity(0.7),
                          )),
                      Text(
                        'Chiken Tikka With  Gravy',
                        style: kHeading14,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\P${100.0}'),
                          AddButton(
                            press: (){
                              callback4();
                              func4('ADD');

                              // Navigator.push(context, MaterialPageRoute(builder: (_) => ChooseOptionScreen(),));
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.72,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      
    );
  }

  Widget getStatsContainer() {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Chicken Pizza',
              style: kHeading24,
            ),
          ),
          SizedBox(height: 10),
          HorizonalProduct(
            text1: 'Free Delivery',
            text2:
            'Chicken Tikka With Extra \nCheeseand Think and gravy \nand Coke and will be deliver \nin 30 mints',
            image:
            'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png',
            price: 100.0,
          ),
          SizedBox(height: 20),
          HorizonalProduct(
            text1: 'Free Delivery',
            text2:
            'Chicken Tikka With Extra \nCheeseand Think and gravy \nand Coke and will be deliver \nin 30 mints',
            image:
            'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png',
            price: 100.0,
          ),
          SizedBox(height: 20),
          HorizonalProduct(
            text1: 'Free Delivery',
            text2:
            'Chicken Tikka With Extra \nCheeseand Think and gravy \nand Coke and will be deliver \nin 30 mints',
            image:
            'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png',
            price: 100.0,
          ),
        ],
      
    );
  }

  Widget getInfoContainer() {
    return  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Small Pizza',
              style: kHeading24,
            ),
          ),
          SizedBox(height: 10),
          HorizonalProduct(
            text1: 'Free Delivery',
            text2:
            'Chicken Tikka With Extra \nCheeseand Think and gravy \nand Coke and will be deliver \nin 30 mints',
            image:
            'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png',
            price: 100.0,
          ),
          SizedBox(height: 20),
          HorizonalProduct(
            text1: 'Free Delivery',
            text2:
            'Chicken Tikka With Extra \nCheeseand Think and gravy \nand Coke and will be deliver \nin 30 mints',
            image:
            'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png',
            price: 100.0,
          ),
          SizedBox(height: 20),
          HorizonalProduct(
            text1: 'Free Delivery',
            text2:
            'Chicken Tikka With Extra \nCheeseand Think and gravy \nand Coke and will be deliver \nin 30 mints',
            image:
            'ass/images/WhatsApp Image 2021-03-17 at 2.07 1.png',
            price: 100.0,
          ),
        ],
      
    );
  }
}
//
