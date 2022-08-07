import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/category_list.dart';
import 'package:hello/common/widgets/custom_text_field.dart';
import 'package:hello/common/widgets/food_items.dart';
import 'address.dart';
import 'offer.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hello/common/widgets/store_category.dart';
import 'package:hello/screens/product_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child:   Column(
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
      CustomTextField(
                    hintText: 'Store name , cuisine', icon: '', labelText: '', 
                    textInputType: TextInputType.none,
                  ),
      // CustomTextField(
      //   icon: Icon(Icons.abc),
      //   textInputType: TextInputType.,
      //   hintText: 'Store name , cuisine',
      // ),
      SizedBox(height: 10),
      Container(
          child: CarouselSlider.builder(
            itemCount: images.length,
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            itemBuilder: (context, index, realIdx) {
              return Container(
                child: Center(
                    child: Image.network(images[index], fit: BoxFit.cover, width: 1000)
                ),
              );
            },
          )
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryItem(
            text: 'Pick Up',
            image: 'ass/images/pickupp.png',
          ),
          CategoryItem(
            text: 'Delivery',
            image: 'ass/images/delivery.png',
          ),
          CategoryItem(
            text: 'Milk Tea',
            image: 'ass/images/Milk Tea.png',
          ),
          CategoryItem(
            text: 'Burgers',
            image: 'ass/images/burger.png',
          ),
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryItem(
            text: 'Pick Up',
            image: 'ass/images/pickupp.png',
          ),
          CategoryItem(
            text: 'Delivery',
            image: 'ass/images/delivery.png',
          ),
          CategoryItem(
            text: 'Milk Tea',
            image: 'ass/images/Milk Tea.png',
          ),
          CategoryItem(
            text: 'Burgers',
            image: 'ass/images/burger.png',
          ),
        ],
      ),
      SizedBox(height: 18),
      Text(
        'Trending On FoodHunt',
        style: kHeading24,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FoodItems(
                text: 'Chiken Tikka Pizaa Wings  Lalano Road',
                image: 'ass/images/food.png',
              ),
              SizedBox(width: 10),
              FoodItems(
                text: 'Chiken Tikka Pizaa Wings  Lalano Road',
                image: 'ass/images/food.png',
              ),
              SizedBox(width: 10),
              FoodItems(
                text: 'Chiken Tikka Pizaa Wings  Lalano Road',
                image: 'ass/images/food.png',
              ),
              SizedBox(width: 10),
              FoodItems(
                text: 'Chiken Tikka Pizaa Wings  Lalano Road',
                image: 'ass/images/food.png',
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 10),
      Text(
        'New On FoodHunt',
        style: kHeading24,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 150,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FoodItems(
                text: 'Chiken Tikka Pizaa Wings  Lalano Road',
                image: 'ass/images/food.png',
              ),
              SizedBox(width: 10),
              FoodItems(
                text: 'Chiken Tikka Pizaa Wings  Lalano Road',
                image: 'ass/images/food.png',
              ),
              SizedBox(width: 10),
              FoodItems(
                text: 'Chiken Tikka Pizaa Wings  Lalano Road',
                image: 'ass/images/food.png',
              ),
              SizedBox(width: 10),
              FoodItems(
                text: 'Chiken Tikka Pizaa Wings  Lalano Road',
                image: 'ass/images/food.png',
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('ass/images/theme 2.png'),
                  Text(
                    'We are not here yet'.toUpperCase(),
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'We don’t here yet, Why don’t try a  different location?',textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black38,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddressScreen()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryColor),
                      ),
                      child: Text(
                        'edit location'.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
             SizedBox(height: 20),
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
                        height: 210,
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
                  Opacity(
                    opacity: 0.3,
                    child: Container(

                        decoration: BoxDecoration(
                            color: kWhiteColor,
                            border: Border.all(color: Color(0xFFC4C4C4)),

                            borderRadius: BorderRadius.circular(15)
                        ),
                        height: 204,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Image.asset('ass/images/food2.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 3),
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

                  Positioned(
                      top: 50,
                      left: 0,
                      right: 0,
                      child: Column(
                        children: [
                          Text('Open at Mon 09.00 am', style: kHeading18.copyWith(color: kWhiteColor),),
                          SizedBox(height: 10),
                          Container(
                            alignment: Alignment.center,
                            height: 38,
                            width: 262,
                            color: kPrimaryColor,
                            child: Text('Store is closed now', style: kHeading18.copyWith(color: kWhiteColor),),
                          )
                        ],
                      )),
                ],
              ),

              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    ));
  }
}
