import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hello/screens/account.dart';
import 'package:hello/screens/cart.dart';
import 'package:hello/screens/home.dart';
import 'package:hello/screens/inbox.dart';
import 'package:hello/screens/login.dart';
import 'package:hello/screens/menu.dart';
import 'package:hello/screens/search.dart';
import 'common/helpers/color_helper.dart';
import 'screens/special_offer.dart';
import 'dart:async';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Food Hunt Store';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Food Hunt App',
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      );
/*      StreamChat(
    streamChatThemeData: StreamChatThemeData(),
    client: StreamApi.client,
    child: ChannelsBloc(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainApp()),
    ),
  );*/

}

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainAppState();
  }
}

class MainAppState extends State<MainApp> {
  int _currentindex = 0;
  var showBadge = false;
  int badgeData = 0;

  Widget callpage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return SearchScreen();
      case 2:
        return Page2(
          callback1: () {
            showBadge = true;
            setState(() {});
          },
          func1: (string) {
            if (string == 'ADD') {
              badgeData++;
            } else if (string == 'REMOVE') {
              badgeData--;
            }
            setState(() {});
          },
        );
      case 3:
        return SpecialOffer();
      case 4:
        return InboxScreen();
      case 5:
        return CartScreen(
          callback1: () {},
          func1: (String) {},
        );
      case 6:
        return AccountScreen();
        break;
      default:
        return HomeScreen();
    }
  }

//map api = 'AIzaSyC6zau6ax3bWjYYV84x1XZCq4EJFCYpK4g';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: callpage(_currentindex),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: kPrimaryColor,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: kIconColor,
            elevation: 10,
            currentIndex: _currentindex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'ass/icons/Group 40.svg',
                ),
                /*SvgPicture.asset(
                  'ass/icons/Group 40.svg',
                ),*/

                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'ass/icons/bi_bag-plus-fill.svg',
                ),
                label: 'Special Order',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'ass/icons/bx_bxs-message-alt-detail.svg',
                ),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Badge(
                    showBadge: showBadge,
                    badgeContent: Text(
                      badgeData.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                    child: SvgPicture.asset('ass/icons/bi_bag-check.svg')),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                  //icon: SvgPicture.asset('ass/icons/akar-icons_person.svg'),
                  //backgroundColor: kPrimaryColor,
                  icon: Icon(Icons.person_outline_outlined),
                  label: 'Account'),
            ],
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            }),
      ),
    );
  }
}
