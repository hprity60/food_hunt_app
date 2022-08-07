import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/add_button.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/custom_text_field.dart';
import 'package:hello/common/widgets/horizontal_product_item.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Search',
        backgroundColor: kWhiteColor,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(
                textInputType: TextInputType.none,
                labelText: 'product name',
                icon: '',
                hintText: 'Product name , category',
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
                            SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('\P${100.0}'),
                                AddButton(
                                  press: () {
                                    
                                  },
                                ),
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
        ),
      )),
    );
  }
}
