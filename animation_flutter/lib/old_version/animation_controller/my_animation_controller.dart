import 'package:flutter/material.dart';

class MyAnimationController extends StatefulWidget {
  const MyAnimationController({Key? key}) : super(key: key);

  @override
  State<MyAnimationController> createState() => _MyAnimationControllerState();
}

class _MyAnimationControllerState extends State<MyAnimationController> with SingleTickerProviderStateMixin<MyAnimationController>{
  late AnimationController _animationController;
  double i=0;
  @override
  void initState() {
    super.initState();
    _animationController=AnimationController(vsync: this,duration: const Duration(seconds: 100),value: i);
    _animationController.forward();
    _animationController.addListener(() {
      setState(() {
        i=(_animationController.value * 299792458).round().toDouble();
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('$i m/s')),
    );
  }
}
