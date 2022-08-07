import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/offer_items.dart';

class InboxScreen extends StatefulWidget {
  InboxScreen({Key? key}) : super(key: key);

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
          style: kHeading18.copyWith(color: kBlackColor),
        ),
        elevation: 0,
        backgroundColor: kWhiteColor,
        actions: [
          Icon(
            Icons.delete_outlined,
            color: kPrimaryColor,
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
            color: kPrimaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  NotificationLists(),
                  NotificationLists(),
                  NotificationLists(),
                  NotificationLists(),
                  NotificationLists(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: FittedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              child: Image(
                                //alignment: Alignment.centerLeft,
                                image: AssetImage('ass/images/logo.png'),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            'Pizza is dispatch',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            width:
                                            MediaQuery.of(context).size.width * 0.3,
                                          ),
                                          Text(
                                            '05/02/2021',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Your pizza is dispatch,thank you for ordering us',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '4 hours ago',
                                  style: TextStyle(
                                      fontSize: 11, fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ),
          )),
    );
  }
}

class NotificationLists extends StatefulWidget {
  @override
  _NotificationListsState createState() => _NotificationListsState();
}

class _NotificationListsState extends State<NotificationLists> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                child: Image(
                  //alignment: Alignment.centerLeft,
                  image: AssetImage('ass/images/logo.png'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Pizza is dispatch',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width:
                              MediaQuery.of(context).size.width * 0.3,
                            ),
                            Text(
                              '05/02/2021',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                        Text(
                          'Your pizza is dispatch,thank you for ordering us',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '4 hours ago',
                    style: TextStyle(
                        fontSize: 11, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
