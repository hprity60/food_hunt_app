import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/custom_text_field.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({Key? key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Languages',
        backgroundColor: kWhiteColor,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Text(
                    'Choose the Language',
                    style: kHeading24,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: 'Find a language', icon: '', labelText: '', 
                    textInputType: TextInputType.none,
                  ),
                  SizedBox(height: 10),
                  LanguageLists(),
                 SizedBox(height: 10),
                  LanguageLists(),
                  SizedBox(height: 10),
                  LanguageLists(),
                  SizedBox(height: 10),
                  LanguageLists(),
                  SizedBox(height: 10),
                  LanguageLists(),
                  SizedBox(height: 10),
                  LanguageLists(),SizedBox(height: 10),
                  LanguageLists(),SizedBox(height: 10),
                  LanguageLists(),

                ],
              ),

            ),
          )),
    );
  }
}

class LanguageLists extends StatefulWidget {
  @override
  _LanguageListsState createState() => _LanguageListsState();
}

class _LanguageListsState extends State<LanguageLists> {
  int id = 1;

  String radioButtonItem = 'one';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kWhiteColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            color: kBlackColor.withOpacity(0.25),
            blurRadius: 4,
          )
        ],
      ),
      //() => _show(context)
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Image.asset('ass/images/download5 1.png'),
            SizedBox(width: 10),
            Text(
              'English',
              style: kHeading14.copyWith(
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),

            Radio(
              activeColor: kPrimaryColor,
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = '';
                  id = 1;
                });
              },
            ),


          ],
        ),
      ),
    );
  }
}

