import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/offer_items.dart';

class OfferScreen extends StatefulWidget {
  OfferScreen({Key? key}) : super(key: key);

  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Offer',
        backgroundColor: kWhiteColor,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OfferItems(
                press: () {},
                text1: 'Street Style Pizza Benumbing Road ',
                text2: 'Free Delivery ',
                text3: 'Free Delivery On Purchase \nof 200.00',
                image: 'ass/images/burger.png',
              ),
              SizedBox(
                height: 15,
              ),
              OfferItems(
                press: () {},
                text1: 'Street Style Pizza Benumbing Road ',
                text2: 'Free Delivery ',
                text3: 'Free Delivery On Purchase \nof 200.00',
                image: 'ass/images/burger.png',
              ),
              SizedBox(
                height: 15,
              ),
              OfferItems(
                press: () {},
                text1: 'Street Style Pizza Benumbing Road ',
                text2: 'Free Delivery ',
                text3: 'Free Delivery On Purchase \nof 200.00',
                image: 'ass/images/burger.png',
              ),
              SizedBox(
                height: 15,
              ),
              OfferItems(
                press: () {},
                text1: 'Street Style Pizza Benumbing Road ',
                text2: 'Free Delivery ',
                text3: 'Free Delivery On Purchase \nof 200.00',
                image: 'ass/images/burger.png',
              ),
            ],
          ),
        ),
      )),
    );
  }
}
