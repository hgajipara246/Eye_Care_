import 'dart:async';

import 'package:flutter/material.dart';

class ChangingColor extends StatefulWidget {
  @override
  _ChangingColorState createState() => _ChangingColorState();
}

class _ChangingColorState extends State<ChangingColor> {
  late Timer _timer;
  late Color _color;
  List<Color> arrColors = [
    Colors.lightBlueAccent,
    Colors.amberAccent,
    Colors.orangeAccent,
    const Color(0xFF0A26A5),
  ];
  int _pos = 0;
  List<int> arrSeconds = [2, 5, 1, 8]; //here I set array for seconds

  @override
  void initState() {
    super.initState();

    doSomething();
  }

  @override
  Widget build(BuildContext context) {
    print("Child Widget rebuild");

    return Container(
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        color: arrColors[_pos],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: RichText(
          text: const TextSpan(
            text: "hustler",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: "JosefinSans-Bold",
              fontSize: 25,
            ),
            children: [
              TextSpan(
                text: "\nAs seen on SRIMCA",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "JosefinSans-Bold",
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    //_timer = null;
    super.dispose();
  }

  Future<void> doSomething() async {
    var second = 0;
    var colorCount = 1;
    var count = 0;
    var totalList = [];
    for (var e in arrSeconds) {
      count = count + e;
      totalList.add(count);
    }
    print(totalList);
    _timer = Timer.periodic(const Duration(milliseconds: 500), (Timer t) {
      if (totalList[totalList.length - 1] == second) {
        _timer.cancel();

        setState(() {
          _pos = 0;
        });
        doSomething();
      } else {
        if (totalList.contains(second)) {
          setState(() {
            _pos = colorCount;
            colorCount++;
            print(second);
          });
        }
      }

      second++;
    });
  }
}
