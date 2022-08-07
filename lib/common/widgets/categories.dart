import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';

class Categories extends StatefulWidget {
  Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Pizza',
    'Chicken pizza',
    'Small pizza',
    'Beaf pizza'
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCategories(index);
        },
      ),
    );
  }

  Widget buildCategories(int index) {
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
            Text(
              categories[index],
              style: kHeading18.copyWith(
                fontSize: selectedIndex == index ? 18 : 14,
                color: selectedIndex == index
                    ? kPrimaryColor
                    : kBlackColor.withOpacity(0.7),
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

enum WidgetMarker { graph, stats, info }

class BodyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BodyWidgetState();
}

class BodyWidgetState extends State<BodyWidget>
    with SingleTickerProviderStateMixin<BodyWidget> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.graph;
  late AnimationController _controller;
  Animation? _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedWidgetMarker = WidgetMarker.graph;
                });
              },
              child: Text(
                "Graph",
                style: TextStyle(
                    color: (selectedWidgetMarker == WidgetMarker.graph)
                        ? kPrimaryColor
                        : Colors.transparent),
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedWidgetMarker = WidgetMarker.stats;
                });
              },
              child: Text("Stats",
                  style: TextStyle(
                      color: (selectedWidgetMarker == WidgetMarker.stats)
                          ? Colors.black
                          : Colors.black12)),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  selectedWidgetMarker = WidgetMarker.info;
                });
              },
              child: Text("Info",
                  style: TextStyle(
                      color: (selectedWidgetMarker == WidgetMarker.info)
                          ? Colors.black
                          : Colors.black12)),
            ),
          ],
        ),
        FutureBuilder(
          future: _playAnimation(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return getCustomContainer();
          },
        )
      ],
    );
  }

  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.graph:
        return getGraphContainer();
      case WidgetMarker.stats:
        return getStatsContainer();
      case WidgetMarker.info:
        return getInfoContainer();
    }
    return getGraphContainer();
  }

  Widget getGraphContainer() {
    return Container();
  }

  Widget getStatsContainer() {
    return Container();
  }

  Widget getInfoContainer() {
    return Container();
  }
}
