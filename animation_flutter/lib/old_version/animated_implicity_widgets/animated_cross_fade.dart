import 'package:flutter/material.dart';

class CustomAnimatedCrossFade extends StatefulWidget {
  const CustomAnimatedCrossFade({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedCrossFade> createState() =>
      _CustomAnimatedCrossFadeState();
}

class _CustomAnimatedCrossFadeState extends State<CustomAnimatedCrossFade> {
  bool _showFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            firstChild: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            secondChild: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            crossFadeState: _showFirst
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            firstCurve: Curves.easeInOutCubic,
            duration: const Duration(seconds: 1),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _showFirst = !_showFirst;
                });
              },
              child: const Text('Animate')),
        ],
      ),
    );
  }
}
