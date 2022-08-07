import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class OTP extends StatefulWidget {
  OTP({Key? key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                    child: Image.asset('ass/images/Group 7.png')),
                Positioned(
                    top: 15,
                    left: 10,
                    child: Container(
                      height: 41,
                      width: 41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: kWhiteColor,

                      ),
                      child: Icon(Icons.arrow_back, color: kPrimaryColor,),

                    )),
              ],
            ),



            Image.asset('ass/images/verify.png',),
            Text(
              'Enter Verification Code',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'A Text message with code',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'was sand to your phone',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'OTP', border: UnderlineInputBorder()),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red[600],
                  //border: Border.all(color: Colors.black),
                  shape: BoxShape.rectangle,
                ),
                child: Center(
                  child: Text(
                    'Verify OTP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      )),
    );
  }
}
