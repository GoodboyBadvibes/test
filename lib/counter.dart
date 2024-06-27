import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late Timer _timer;
  int _secondsRemaining = 60;
  int _minutesRemaining = 0;
  int _hoursRemaining = 5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (Timer timer) {
      setState(() {
        if (_secondsRemaining < 1) {
          if (_minutesRemaining < 1) {
            if (_hoursRemaining < 1) {
              timer.cancel();
            } else {
              _hoursRemaining--;
              _minutesRemaining = 60;
              _secondsRemaining = 60;
            }
          } else {
            _minutesRemaining--;
            _secondsRemaining = 60;
          }
        } else {
          _secondsRemaining--;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.all(4.0),
            color: Color(0xffDFE9FF),
            child: Text('$_hoursRemaining',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'raleway',
                  fontWeight: FontWeight.bold,
                ))),
                Container(
            padding: EdgeInsets.all(4.0),
            color: Color(0xffDFE9FF),
            child: Text('$_minutesRemaining',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'raleway',
                  fontWeight: FontWeight.bold,
                ))),
                Container(
            padding: EdgeInsets.all(4.0),
            color: Color(0xffDFE9FF),
            child: Text('$_secondsRemaining',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'raleway',
                  fontWeight: FontWeight.bold,
                )))
      ],
    );
  }
}
