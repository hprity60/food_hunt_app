import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello/common/helpers/color_helper.dart';
import 'package:hello/common/helpers/size_helper.dart';
import 'package:timelines/timelines.dart';

class OrderTimeLine extends StatefulWidget {
  final VoidCallback press;
  OrderTimeLine({required this.press});
  @override
  _OrderTimeLineState createState() => _OrderTimeLineState();
}

class _OrderTimeLineState extends State<OrderTimeLine> {
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
    return GestureDetector(
        onTap: widget.press,

      child: Container(
        height: 191,
        width: double.infinity,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 0, vertical: 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text('Order #1151', style: kHeading16,),
                      Text('P 67.00', style: kHeading16,),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 0),
                  child: Text('Street Style Noodle Corner Lilano Branch'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Last Status Update On 11:00 pm'),

                      Text('11/03/2021'),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 110,
                  child: Timeline.tileBuilder(
                    theme: TimelineThemeData(
                      direction: Axis.horizontal,
                      connectorTheme: ConnectorThemeData(
                        space:30.0,
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
                      /*contentsBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  _processes[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: getColor(index),
                  ),
                ),
              );
            },*/
                      indicatorBuilder: (_, index) {
                        var color;
                        var child;
                        if (index == _processIndex) {
                          color = inProgressColor;
                          child = Padding(
                              padding: const EdgeInsets.all(0),
                              child: _Imageprocesses[index]
                            /*CircularProgressIndicator(
                                          strokeWidth: 3.0,
                                          valueColor: AlwaysStoppedAnimation(Colors.white),
                                        ),*/
                          );
                        } else if (index < _processIndex) {
                          color = completeColor;
                          child = _Imageprocesses[index]
                          /*Icon(
                  Icons.check,
                 // color: Colors.white,
                  size: 15.0,
                )*/;
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
                              gradientColors = [Colors.amber, color];
                            } else {
                              gradientColors = [
                                prevColor,
                                Colors.deepPurple,
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
              ]
          ),
        ),
      ),
    );
  }
  final _processes = [
    'Pending',
    'Confirmed',
    'Preparing',
    'Dispatched',
    'Delivered',
  ];

  final _Imageprocesses = [
    Image.asset('ass/images/pending 1.png', height: 50, width: 50,),
    Image.asset('ass/images/check 1.png',height: 50, width: 50,),
    Image.asset('ass/images/pot 2 1.png',height: 50, width: 50,),
    Image.asset('ass/images/ion_bicycle.png',height: 50, width: 50,),
    Image.asset('ass/images/check 1.png',height: 50, width: 50,),
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
