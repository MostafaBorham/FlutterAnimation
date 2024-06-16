import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyFadeTransition extends StatefulWidget {
  const MyFadeTransition({Key? key}) : super(key: key);

  @override
  State<MyFadeTransition> createState() => _MyFadeTransitionState();
}

class _MyFadeTransitionState extends State<MyFadeTransition> with SingleTickerProviderStateMixin{
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 1),reverseDuration: Duration(seconds: 2),);
    animation=Tween<double>(begin: 0,end: 1).animate(CurvedAnimation(parent: animationController, curve: Curves.easeIn,reverseCurve: Curves.linear));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Fade Transition'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            10.verticalSpace,
            FadeTransition(
              opacity: animation,
              child: FlutterLogo(),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {
                  animationController.forward();
                },
                child: const Text('Forward')),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  animationController.reverse();
                },
                child: const Text('Reverse')),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  animationController.stop();
                },
                child: const Text('Stop')),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  animationController.reset();
                },
                child: const Text('Reset')),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  animationController.repeat();
                },
                child: const Text('Repeat')),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
                onPressed: () {
                  animationController.repeat(reverse: true);
                },
                child: const Text('Repeat with reverse')),
          ],
        ),
      ),
    );
  }
}
