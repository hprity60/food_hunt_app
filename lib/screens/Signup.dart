import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';

import 'login.dart';

class SignIn extends StatefulWidget {
  SignIn({Key ?key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child:
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                          child: Image.asset('ass/images/Group 7.png')),
                      Positioned(
                          top: 15,
                          left: 10,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 41,
                              width: 41,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(55),
                                color: kWhiteColor,

                              ),
                              child: Icon(Icons.arrow_back, color: kPrimaryColor,),

                            ),
                          )),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [

                            Text(
                              'Lets get started',
                              style:
                              TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.person),
                              hintText: 'Name',
                              border: UnderlineInputBorder()),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.phone),
                              hintText: 'Mobile No',
                              border: UnderlineInputBorder()),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.mail),
                              hintText: 'Email',
                              border: UnderlineInputBorder()),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.remove_red_eye),
                              hintText: 'Password',
                              border: UnderlineInputBorder()),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.code),
                              hintText: 'Referral Code',
                              border: UnderlineInputBorder()),
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
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'I already have an account.',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => LoginScreen()),
                               );
                            },
                            child: Text(
                              '  Login',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'By Logging in, you agree to our  ',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  'Term & Conditions',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),

                               Text(
                                  ' &',
                                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                ),

                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text(
                                'Privacy Policy',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                        ),
                             ],
                           ),
                         ),

                      SizedBox(
                        height: 15,
                      ),
                    ],
                  )
                ],
              ),
           ),
      )),
    );
  }
}
