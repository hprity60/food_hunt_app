import 'package:flutter/material.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/widgets/default_button.dart';
import 'package:hello/common/widgets/location_list.dart';

import 'edit_address.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Address',
          backgroundColor: kWhiteColor,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.gps_fixed,
                        size: 35,
                      ),
                      SizedBox(width: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current Location',
                            style: kHeading14,
                          ),
                          Text(
                            'Using Gps',
                            // style: kHeading10,
                          ),
                        ],
                      ),

                      //Image.asset('ass/images/offer.png'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10),

                  LocationLists(
                    placeDetail:
                        'MCL building 69 Sikatune Urduja Village \nbarangayq73, Caloocan,Metro Manila',
                    placeName: 'Home',
                  ),
                  //Image.asset('ass/images/banner1.png'),
                  Divider(),
                  LocationLists(
                    placeDetail:
                        'MCL building 69 Sikatune Urduja Village \nbarangayq73, Caloocan,Metro Manila',
                    placeName: 'Office',
                  ),
                  //Image.asset('ass/images/banner1.png'),
                  Divider(),
                  LocationLists(
                    placeDetail:
                        'MCL building 69 Sikatune Urduja Village \nbarangayq73, Caloocan,Metro Manila',
                    placeName: 'Shopping Mall',
                  ),
                  //Image.asset('ass/images/banner1.png'),
                  Divider(),
                  LocationLists(
                    placeDetail:
                        'MCL building 69 Sikatune Urduja Village \nbarangayq73, Caloocan,Metro Manila',
                    placeName: 'Home',
                  ),
                  //Image.asset('ass/images/banner1.png'),
                  Divider(),
                  LocationLists(
                    placeDetail:
                        'MCL building 69 Sikatune Urduja Village \nbarangayq73, Caloocan,Metro Manila',
                    placeName: 'Office',
                  ),
                  //Image.asset('ass/images/banner1.png'),
                  Divider(),
                  DefaultButton(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EditAddress()),
                      );
                    },
                    text: 'add address',
                    color: kPrimaryColor,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
