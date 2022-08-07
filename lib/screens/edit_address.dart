import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/default_button.dart';
import 'package:hello/common/widgets/text_fields.dart';

class EditAddress extends StatefulWidget {
  //final TextField textField;
  const EditAddress({Key? key, }) : super(key: key);

  @override
  _EditAddressState createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  @override
  String radioButtonItem = 'ONE';
  int id = 1;

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Set delivery location',
                      style: kHeading18.copyWith(fontWeight: FontWeight.bold),
                    ),
                    //SizedBox(height: 10),
                    TextFields(
                      hintText:
                          'MCL building 69 Sikatune Urduja Village barangay',
                      labelText: 'Address',
                    ),
                    TextFields(
                      hintText:
                          'MCL building 69 Sikatune Urduja Village barangay',
                      labelText: 'Enter name',
                    ),
                    TextFields(
                      hintText:
                          'MCL building 69 Sikatune Urduja Village barangay',
                      labelText: 'Enter Mobile No.',
                    ),
                    TextFields(
                      hintText:
                          'MCL building 69 Sikatune Urduja Village barangay',
                      labelText: 'Enter landmark',
                    ),
                    TextFields(
                      hintText:
                          'MCL building 69 Sikatune Urduja Village barangay',
                      labelText: 'Enter Full Address',
                    ),
                    SizedBox(height: 10),
                    Text('Save as'.toUpperCase()),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Radio(
                            activeColor: kPrimaryColor,
                            value: 1,
                            groupValue: id,
                            onChanged: (val) {
                              setState(() {
                                radioButtonItem = 'Home';
                                id = 1;
                              });
                            },
                          ),
                          Text(
                            'Home',
                          ),
                          Radio(
                            activeColor: kPrimaryColor,
                            value: 2,
                            groupValue: id,
                            onChanged: (val) {
                              setState(() {
                                radioButtonItem = 'Office';
                                id = 2;
                              });
                            },
                          ),
                          Text(
                            'Office',
                          ),
                          Radio(
                            activeColor: kPrimaryColor,
                            value: 3,
                            groupValue: id,
                            onChanged: (val) {
                              setState(() {
                                radioButtonItem = 'Other';
                                id = 3;
                              });
                            },
                          ),
                          Text(
                            'Other',
                          ),
                        ]),
                  ],
                ),
              ),
              //Radio(value: , groupValue: groupValue, onChanged: onChanged)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: DefaultButton(
                  press: () {},
                  text: 'Save address',
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
