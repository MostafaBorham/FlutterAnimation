import 'dart:math';

import 'package:flutter/material.dart';

class MyTweenAnimationBuilder extends StatefulWidget {
  const MyTweenAnimationBuilder({Key? key}) : super(key: key);

  @override
  State<MyTweenAnimationBuilder> createState() =>
      _MyTweenAnimationBuilderState();
}

class _MyTweenAnimationBuilderState extends State<MyTweenAnimationBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder(
            tween: IntTween(begin: 0, end: 20),
            duration: Duration(seconds: 10),
            builder: (context, i, child) => Center(child: Text('$i s')),
          ),
          SizedBox(
            height: 20,
          ),
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: 2 * pi),
            duration: Duration(seconds: 10),
            builder: (_, angle, __) => Transform.rotate(
              angle: angle,
              child: FlutterLogo(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TweenAnimationBuilder(
            tween: ColorTween(begin: Colors.white,end: Colors.red),
            duration: Duration(seconds: 10),
            builder: (_,color,__)=>ColorFiltered(colorFilter: ColorFilter.mode(color!, BlendMode.modulate),
              child: Image.network('https://assets.stickpng.com/images/580b585b2edbce24c47b270f.png',fit: BoxFit.contain,height: 100,width: 100,),
            ),
          ),
        ],
      ),
    );
  }
}
