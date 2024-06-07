import 'package:flutter/material.dart';

class CustomAnimationController extends StatefulWidget {
  const CustomAnimationController({Key? key}) : super(key: key);

  @override
  State<CustomAnimationController> createState() => _CustomAnimationControllerState();
}

class _CustomAnimationControllerState extends State<CustomAnimationController> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController=AnimationController(vsync: this,duration: const Duration(seconds: 1));
    _animation=Tween<double>(begin: 1.0,end: 10.0).animate(_animationController)..addStatusListener((status) {
      if(status==AnimationStatus.completed){
        debugPrint("Animation Completed");
      }
    })..addListener(() {
      setState(() {});
    });
    _animationController.forward();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: _animation.value*20,
          height: _animation.value*20,
          color: Colors.red,
        ),
      ),
    );
  }
}