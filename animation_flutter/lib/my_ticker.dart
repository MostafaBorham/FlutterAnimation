import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MyTicker extends StatefulWidget {
  const MyTicker({Key? key}) : super(key: key);

  @override
  State<MyTicker> createState() => _MyTickerState();
}

class _MyTickerState extends State<MyTicker> {
  var ticker=Ticker((elapsed) {
    print('Hello Ticker');
  });
  @override
  void initState() {
    super.initState();
    ticker.start();
    Future.delayed(Duration(seconds: 5),() => ticker.dispose(),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
