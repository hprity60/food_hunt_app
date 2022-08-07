import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class StoreCategory extends StatefulWidget {
  StoreCategory({Key? key}) : super(key: key);

  @override
  _StoreCategoryState createState() => _StoreCategoryState();
}

class _StoreCategoryState extends State<StoreCategory> {
  List<String> StoreCategory = [
    'Delivery',
    'Pickup',
    'Dine in',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: StoreCategory.length,
        itemBuilder: (BuildContext context, int index) {
          return buildStoreCategory(index);
        },
      ),
    );
  }

  Widget buildStoreCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(left: 20, top: 10, right: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                StoreCategory[index],
                style: kHeading18.copyWith(
                  fontSize: selectedIndex == index ? 18 : 14,
                  color: selectedIndex == index
                      ? kPrimaryColor
                      : kBlackColor.withOpacity(0.7),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 3,
              width: 50,
              color:
              selectedIndex == index ? kPrimaryColor : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
