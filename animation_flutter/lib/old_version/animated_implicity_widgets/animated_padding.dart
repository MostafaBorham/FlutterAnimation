import 'package:flutter/material.dart';

class CustomAnimatedPadding extends StatefulWidget {
  const CustomAnimatedPadding({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedPadding> createState() =>
      _CustomAnimatedPaddingState();
}

class _CustomAnimatedPaddingState
    extends State<CustomAnimatedPadding> {
  double padding=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(child: AnimatedPadding(padding: EdgeInsets.all(padding), duration: Duration(seconds: 2),child: Text('Animated Padding'),)),
            color: Colors.green,
            height: 100,
            width: 100,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  padding=20;
                });
              },
              child: const Text('Animate')),
        ],
      ),
    );
  }
}
