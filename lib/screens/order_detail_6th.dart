import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:hello/common/widgets/custom_app_bar.dart';
import 'package:hello/common/widgets/custom_container.dart';
import 'package:hello/screens/order_detail_4th.dart';
import 'package:timelines/timelines.dart';

import 'order_detail_7th.dart';

class OrderDetail6thScreen extends StatefulWidget {
  OrderDetail6thScreen({Key? key}) : super(key: key);

  @override
  _OrderDetail6thScreenState createState() => _OrderDetail6thScreenState();
}

class _OrderDetail6thScreenState extends State<OrderDetail6thScreen> {
  int id = 1;
  int activeStep = 0;
  String radioButtonItem = 'one';
  int _processIndex = 0;

  Color getColor(int index) {
    if (index == _processIndex) {
      return inProgressColor;
    } else if (index < _processIndex) {
      return completeColor;
    } else {
      return todoColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Order #1151',
        backgroundColor: Color(0xFFEFE6E6),
      ),
      backgroundColor: Color(0xFFEFE6E6),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => OrderDetail7thScreen()));
        },
        backgroundColor: inProgressColor,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Text('Mode'),
                  SizedBox(width: 5),
                  Container(
                    alignment: Alignment.center,
                    height: 19,
                    width: 56,
                    color: kPrimaryColor,
                    child: Text(
                      'Pick-Up',
                      style: kHeading14.copyWith(color: kWhiteColor),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text('Wasiting for confrmation from store',
                  style: kHeading16),
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2, 4),
                    color: kBlackColor.withOpacity(0.25),
                    blurRadius: 4,
                  )
                ],
              ),
              height: 115,
              child: Timeline.tileBuilder(
                theme: TimelineThemeData(
                  direction: Axis.horizontal,
                  connectorTheme: ConnectorThemeData(
                    space: 30.0,
                    thickness: 1.0,
                  ),
                ),
                builder: TimelineTileBuilder.connected(
                  connectionDirection: ConnectionDirection.before,
                  itemExtentBuilder: (_, __) =>
                      MediaQuery.of(context).size.width / _processes.length,
                  oppositeContentsBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child:
                          //_Imageprocesses[index],
                          Text(
                        _processes[index],
                        style: TextStyle(
                          fontSize: 12,
                          color: getColor(index),
                        ),
                      ),
                    );
                  },
                  indicatorBuilder: (_, index) {
                    var color;
                    var child;
                    if (index == _processIndex) {
                      color = inProgressColor;
                      child = Padding(
                          padding: const EdgeInsets.all(0),
                          child: _Imageprocesses[index]);
                    } else if (index < _processIndex) {
                      color = completeColor;
                      child = _Imageprocesses[index];
                    } else {
                      color = todoColor;
                    }

                    if (index <= _processIndex) {
                      return Stack(
                        children: [
                          CustomPaint(
                            size: Size(30.0, 30.0),
                            painter: _BezierPainter(
                              color: color,
                              drawStart: index > 0,
                              drawEnd: index < _processIndex,
                            ),
                          ),
                          DotIndicator(
                            size: 50.0,
                            color: color,
                            child: child,
                          ),
                        ],
                      );
                    } else {
                      return Stack(
                        children: [
                          CustomPaint(
                            size: Size(15.0, 15.0),
                            painter: _BezierPainter(
                              color: color,
                              drawEnd: index < _processes.length - 1,
                            ),
                          ),
                          OutlinedDotIndicator(
                            borderWidth: 0.0,
                            backgroundColor: Color(0xFF857B7B),
                            child: _Imageprocesses[index],
                            color: color,
                          ),
                        ],
                      );
                    }
                  },
                  connectorBuilder: (_, index, type) {
                    if (index > 0) {
                      if (index == _processIndex) {
                        final prevColor = getColor(index - 1);
                        final color = getColor(index);
                        List<Color> gradientColors;
                        if (type == ConnectorType.start) {
                          gradientColors = [
                            Colors.amber,
                            color
                          ];
                        } else {
                          gradientColors = [
                            prevColor,
                            Colors.purple
                          ];
                        }
                        return DecoratedLineConnector(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: gradientColors,
                            ),
                          ),
                        );
                      } else {
                        return SolidLineConnector(
                          color: getColor(index),
                        );
                      }
                    } else {
                      return null;
                    }
                  },
                  itemCount: _processes.length,
                ),
              ),
            ),
            SizedBox(height: 10),
            CustomContainer(
                'ass/images/store Png 1.png',
                'Street Style Noodle Corner Lilano Branch',
                'Street Style Noodle Corner Lilano Branch'),
            SizedBox(height: 10),
            Container(
              height: 56,
              width: double.infinity,
              color: kWhiteColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Image.asset('ass/images/images (1) 1.png'),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text('Payment Method', style: kHeading14),
                        SizedBox(height: 4),
                        Text('Cash', style: kHeading14)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 73,
              width: double.infinity,
              color: kWhiteColor,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Street Style Pizza Benuming Road'),
                          Text('4 '),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'P50.00',
                                style: TextStyle(
                                    fontSize: 10,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 8),
                              Text('P50.00', style: kHeading12)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Street Style Pizza Benuming Road'),
                          Text('4 '),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'P50.00',
                                style: TextStyle(
                                    fontSize: 10,
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 8),
                              Text('P50.00', style: kHeading12)
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              height: 90,
              width: double.infinity,
              color: kWhiteColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Order Value'),
                        Text('P 100.00'),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Discount'),
                        Text('P 30.00'),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Tax'),
                        Text('P 30.00'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }

  final _processes = [
    'Pending',
    'Confirmed',
    'Picked',
  ];
  final _Imageprocesses = [
    Image.asset(
      'ass/images/pending 1.png',
      height: 50,
      width: 50,
    ),
    Image.asset(
      'ass/images/check 1.png',
      height: 50,
      width: 50,
    ),
    Image.asset(
      'ass/images/check 1.png',
      height: 50,
      width: 50,
    ),
  ];
}

class _BezierPainter extends CustomPainter {
  const _BezierPainter({
    required this.color,
    this.drawStart = true,
    this.drawEnd = true,
  });

  final Color color;
  final bool drawStart;
  final bool drawEnd;

  Offset _offset(double radius, double angle) {
    return Offset(
      radius * cos(angle) + radius,
      radius * sin(angle) + radius,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = color;

    final radius = size.width / 2;

    var angle;
    var offset1;
    var offset2;

    var path;

    if (drawStart) {
      angle = 3 * pi / 4;
      offset1 = _offset(radius, angle);
      offset2 = _offset(radius, -angle);
      path = Path()
        ..moveTo(offset1.dx, offset1.dy)
        ..quadraticBezierTo(0.0, size.height / 0, -radius,
            radius) // TODO connector start & gradient
        ..quadraticBezierTo(0.0, size.height / 2, offset2.dx, offset2.dy)
        ..close();

      canvas.drawPath(path, paint);
    }
    if (drawEnd) {
      angle = -pi / 4;
      offset1 = _offset(radius, angle);
      offset2 = _offset(radius, -angle);

      path = Path()
        ..moveTo(offset1.dx, offset1.dy)
        ..quadraticBezierTo(size.width, size.height / 0, size.width + radius,
            radius) // TODO connector end & gradient
        ..quadraticBezierTo(size.width, size.height / 2, offset2.dx, offset2.dy)
        ..close();

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(_BezierPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.drawStart != drawStart ||
        oldDelegate.drawEnd != drawEnd;
  }
}
