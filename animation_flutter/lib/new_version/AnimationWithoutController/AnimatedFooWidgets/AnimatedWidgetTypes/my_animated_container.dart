import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double height = 50;
  double width = 50;
  double margin = 10;
  Color color = Colors.red;
  double radius = 0;
  double borderWidth = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.easeInBack,
          height: height,
          width: width,
          margin: EdgeInsets.all(margin),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: borderWidth,color: Colors.black),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                height = height * 2;
                width = width * 2;
              });
            },
            child: const Text('Change dimensions')),
        SizedBox(
          height: 2,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                color = Colors.orange;
              });
            },
            child: const Text('Change Color')),
        SizedBox(
          height: 2,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                margin = margin * 3;
              });
            },
            child: const Text('Change Margin')),
        SizedBox(
          height: 2,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                radius = 20;
              });
            },
            child: const Text('Change Border Radius')),
        SizedBox(
          height: 2,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                borderWidth = 10;
              });
            },
            child: const Text('Change Border Width')),
      ]),
    );
  }
}
