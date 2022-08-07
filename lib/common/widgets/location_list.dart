import 'package:flutter/material.dart';
import 'package:hello/common/helpers/size_helper.dart';

class LocationLists extends StatelessWidget {
  final String placeName;
  final String placeDetail;

  const LocationLists({
    Key? key,
   required this.placeName,
   required this.placeDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            size: 35,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                placeName,
                style: kHeading14,
              ),
              Text(
                placeDetail,
                style: kHeading14,
              ),
            ],
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext bc) => [
              PopupMenuItem(child: Text("Edit"), value: "/edit"),

              PopupMenuItem(child: Text("Delete"), value: "/delete"),
              // PopupMenuItem(
              //     child: Text("Settings"), value: "/settings"),
            ],
            onSelected: (route) {
              print(route);
              // Note You must create respective pages for navigation
              Navigator.pushNamed(context, route.toString());
            },
          ),
        ],
      ),
    );
  }
}
