import 'package:flutter/material.dart';

class CustomAnimatedContainer extends StatefulWidget {
  const CustomAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedContainer> createState() =>
      _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  double aContainerHeight = 50;
  double aContainerWidth = 50;
  Color aContainerColor = Colors.red;
  double aContainerRadius = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.easeInCubic,
            height: aContainerHeight,
            width: aContainerWidth,
            decoration: BoxDecoration(
              color: aContainerColor,
              borderRadius: BorderRadius.circular(aContainerRadius),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  aContainerHeight = 100;
                  aContainerWidth = 100;
                  aContainerColor = Colors.orangeAccent;
                  aContainerRadius = 50;
                });
              },
              child: const Text('Animate')),
        ],
      ),
    );
  }
}
