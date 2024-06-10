import 'package:flutter/material.dart';

class MyAnimatedScale extends StatefulWidget {
  const MyAnimatedScale({Key? key}) : super(key: key);

  @override
  State<MyAnimatedScale> createState() => _MyAnimatedScaleState();
}

class _MyAnimatedScaleState extends State<MyAnimatedScale> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Scale'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center, children: [
          AnimatedScale(
            duration: const Duration(seconds: 2),
            curve: Curves.linear,
            scale: scale,
            child: const FlutterLogo(),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  scale *= 20;
                });
              },
              child: const Text('Scale Up')),
          SizedBox(
            height: 2,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  scale /= 20;
                });
              },
              child: const Text('Scale Down')),
        ]),
      ),
    );
  }
}
