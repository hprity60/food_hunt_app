import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/default_button.dart';
import 'package:hello/common/widgets/ProgressHUD.dart';

import 'Signup.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalKey = new GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [

                Image.asset('ass/images/Group 7.png'),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(
                     height: 15,
                   ),
                   FittedBox(
                     child: Text('Welcome To',
                         style: kHeading55),
                   ),
                   SizedBox(
                     height: 25,
                   ),
                   Image.asset('ass/images/food logo.png'),
                   SizedBox(
                     height: 55,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Please ', style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.72)),),
                       Text(' Login ',style: kHeading14.copyWith(color: kPrimaryColor),),
                       Text(' to continue our app',style: kHeading14.copyWith(color: kBlackColor.withOpacity(0.72)),),

                     ],
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Form(
                     key: globalKey,
                     child: Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             children: [
                               Text(
                                 'Mobile number',
                                 style: kHeading14.copyWith(
                                     fontWeight: FontWeight.normal),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: TextFormField(
                             decoration: InputDecoration(
                                 floatingLabelBehavior: FloatingLabelBehavior.always,
                                 helperStyle: kHeading14,
                                 hintText: 'Enter the mobile number',
                                 border: OutlineInputBorder()),
                             keyboardType: TextInputType.number,
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Row(
                             children: [
                               Text(
                                 'Password',
                                 style: kHeading14.copyWith(
                                     fontWeight: FontWeight.normal),
                               ),
                             ],
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: TextFormField(

                             decoration: InputDecoration(
                                 floatingLabelBehavior: FloatingLabelBehavior.always,
                                 suffixText: 'Forget?',
                                 suffixStyle: kHeading14.copyWith(color: kPrimaryColor),
                                 hintText: 'Password (Leave blank to get otp)',
                                 border: OutlineInputBorder(
                                 )),
                             keyboardType: TextInputType.number,
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   /*Padding(
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
                           'Login to my account',
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 14,
                               fontWeight: FontWeight.bold),
                         ),
                       ),
                     ),*/

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25),
                 child: DefaultButton(
                   press: (){
                     if (validateAndSave()) {
                      // print(request.toJson());

                       /*setState(() {
                         isApiCallProcess = true;
                       });

                       FoodRepository apiService = new FoodRepository();
                       apiService.login(request).then((value) {
                         if (value != null) {
                           setState(() {
                             isApiCallProcess = false;
                           });

                           if (value.token.isNotEmpty) {
                             final snackBar = SnackBar(
                                 content: Text("Login Successful"));
                             scaffoldKey.currentState
                                 .showSnackBar(snackBar);
                           } else {
                             final snackBar =
                             SnackBar(content: Text(value.error));
                             scaffoldKey.currentState
                                 .showSnackBar(snackBar);
                           }
                         }
                       });*/
                     }
                   },
                   text: 'Login to my account',
                   color: kPrimaryColor,
                 ),
               ),


                   SizedBox(
                     height: 10,
                   ),
                   Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(
                           'Dont’t have an account?',
                           style: TextStyle(
                               fontSize: 14, fontWeight: FontWeight.bold),
                         ),
                         GestureDetector(
                           onTap: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => SignIn()),
                             );
                           },
                           child: Text(
                             ' Create one',
                             style: TextStyle(
                                 color: kPrimaryColor,
                                 fontSize: 14,
                                 fontWeight: FontWeight.bold),
                           ),
                         ),
                       ],
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                 ],
               ),
             )
              ],
            ),
          ),
        ),
      )),
    );
  }
  bool validateAndSave() {
    final form = globalKey.currentState;
    
    return false;
  }
}
