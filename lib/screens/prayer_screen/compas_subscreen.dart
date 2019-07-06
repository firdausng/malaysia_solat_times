import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:malaysia_solat_times/shared/constant.dart';

class CompasSubScreen extends StatefulWidget {
  @override
  _CompasSubScreenState createState() => _CompasSubScreenState();
}

class _CompasSubScreenState extends State<CompasSubScreen> {
  double _direction = 0;
  double _compass = 0;

  @override
  void initState() {
    super.initState();
    if (this.mounted) {
      //direction value is between 0 - 360 degree
      FlutterCompass.events.listen((double direction) {
        print("direction: $direction");
        setState(() {
          _direction = direction;
          _compass = ((_direction ?? 0) *
              (pi / 180) *
              -1); // convert degree to radian: 1 rad = 180°/π
          print("_compass: $_compass");
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black26,
        shape: BoxShape.circle,
        border: Border.all(
          width: 5,
          color: Colors.white30,
        ),
      ),
      alignment: Alignment.center,
      //color: Colors.transparent,

      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            child: Transform.rotate(
              angle: _compass,
              //child: new Image.asset('assets/compass.jpg'),
              //child: Text("Compass"),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/img/compass_960_720.png'),
                  CustomPaint(
                    painter: CompassPainter(),
                  )
                ],
              ),
            ),
          ),
          Text(
            "${_direction.round()}°",
            style: kSolatTimeRemainStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              shadows: [
                Shadow(
                  color: Colors.blueGrey,
                  blurRadius: 2,
                  offset: Offset(1.5, 3),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CompassPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.white70
      ..strokeWidth = 10;
    canvas.drawLine(Offset(100, 20), Offset(120, 0), paint);
    canvas.drawLine(Offset(100, -20), Offset(120, 0), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
