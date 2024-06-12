import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAnimatedBuilder extends StatefulWidget {
  const MyAnimatedBuilder({Key? key}) : super(key: key);

  @override
  State<MyAnimatedBuilder> createState() => _MyAnimatedBuilderState();
}

class _MyAnimatedBuilderState extends State<MyAnimatedBuilder>
    with SingleTickerProviderStateMixin {
  late Animation<Color?> colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        reverseDuration: const Duration(seconds: 3));
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.green)
        .animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Builder'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: colorAnimation,
              builder: (context, child) => Container(
                padding: EdgeInsets.all(20.sp),
                color: colorAnimation.value,
                child: child,
              ),
              child: const Text('My Animate Builder'),
            ),
            10.verticalSpace,
            ElevatedButton(
                onPressed: () {
                  animationController.forward();
                },
                child: const Text('Forward')),
            5.verticalSpace,
            ElevatedButton(
                onPressed: () {
                  animationController.reverse();
                },
                child: const Text('Reverse')),
            5.verticalSpace,
            ElevatedButton(
                onPressed: () {
                  animationController.stop();
                },
                child: const Text('Stop')),
          ],
        ),
      ),
    );
  }
}
