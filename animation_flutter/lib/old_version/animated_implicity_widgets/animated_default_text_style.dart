import 'package:flutter/material.dart';

class CustomAnimatedDefaultTextStyle extends StatefulWidget {
  const CustomAnimatedDefaultTextStyle({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedDefaultTextStyle> createState() =>
      _CustomAnimatedDefaultTextStyleState();
}

class _CustomAnimatedDefaultTextStyleState
    extends State<CustomAnimatedDefaultTextStyle> {
  Color textColor=Colors.red;
  double textSize=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            child: Text('Show My Animation'),
            style: TextStyle(color: textColor,fontSize: textSize),
            duration: Duration(seconds: 1),
            curve: Curves.easeOutCubic,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  textColor=Colors.yellow;
                  textSize=20;
                });
              },
              child: const Text('Animate')),
        ],
      ),
    );
  }
}
