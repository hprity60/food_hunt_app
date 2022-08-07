import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/default_button.dart';
import 'package:hello/common/widgets/text_fields.dart';
import 'package:hello/screens/special_order2.dart';


class SpecialOffer extends StatefulWidget {
  
  const SpecialOffer({Key? key,}) : super(key: key);

  @override
  _SpecialOfferState createState() => _SpecialOfferState();
}

class _SpecialOfferState extends State<SpecialOffer> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: CustomAppBar(
            title: 'Special Order',
            backgroundColor: kWhiteColor,
          ),
          body: SingleChildScrollView(
            child: SafeArea(
             child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SpecialOffer2()));
                        },
                        child: Row(
                          children: [
                            Image.asset('ass/images/store Png 1.png'),
                            SizedBox(width: 5),
                            Text('Pickup point of order', style: kHeading18,)

                          ],
                        ),
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
                      SizedBox(height: 10),
                      Text('Nearby Stores', style: kHeading16,),
                    ],
                  ),
                ),
                    SizedBox(height: 10),
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
                      child: TabBar(
                        isScrollable: true,
                          unselectedLabelColor: kBlackColor,
                          labelColor: kPrimaryColor,
                          indicatorColor: kPrimaryColor,

                          tabs: [
                            Tab(
                                child: Text('Food'),),
                            Tab(text: 'Medicine'),
                            Tab(text: 'Grocery'),
                            Tab(text: 'Vegetables'),
                          ]),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 530,
                      child: TabBarView(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(height: 10),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                                 Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              SizedBox(height: 10),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(height: 10),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              SizedBox(height: 10),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(height: 10),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              SizedBox(height: 10),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(height: 10),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              Text('Street pizza point', style: kHeading16,),
                              Text('1.9 KM Street Style Noodle Corner Lilano Branch',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.7), fontWeight: FontWeight.normal)),
                              Divider(),
                              SizedBox(height: 10),


                            ],
                          ),
                        ),
                      ]),
                    ),


                    SizedBox(height: 10),
                  ],
                ),

            ),
          )),
    );
  }
}
