import 'package:flutter/material.dart';

class CustomAnimatedOpacity extends StatefulWidget {
  const CustomAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<CustomAnimatedOpacity> createState() => _CustomAnimatedOpacityState();
}

class _CustomAnimatedOpacityState extends State<CustomAnimatedOpacity> {
  double opacity = 0.2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(seconds: 2),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  opacity = 1;
                });
              },
              child: const Text('Animate')),
        ],
      ),
    );
  }
}
