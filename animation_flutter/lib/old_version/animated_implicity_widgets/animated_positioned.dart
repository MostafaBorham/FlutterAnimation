import 'package:flutter/material.dart';

class CustomAnimatedPositioned extends StatefulWidget {
  const CustomAnimatedPositioned({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedPositioned> createState() =>
      _CustomAnimatedPositionedState();
}

class _CustomAnimatedPositionedState extends State<CustomAnimatedPositioned> {
  double top = 0;
  double left = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 300,
          color: Colors.yellow,
          child: Stack(
            alignment: Alignment.center,
            children: [
              AnimatedPositioned(
                duration: const Duration(seconds: 2),
                width: 50,
                height: 50,
                child: Text('Animated Positioned'),
                top: top,
                left: left,
                curve: Curves.linear,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      left = 150;

                    });
                  },
                  child: const Text('Animate')),
            ],
          )
        ),
      ),
    );
  }
}
