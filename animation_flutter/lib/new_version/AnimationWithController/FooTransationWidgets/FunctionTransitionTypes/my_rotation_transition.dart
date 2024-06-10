import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRotationTransition extends StatefulWidget {
  const MyRotationTransition({Key? key}) : super(key: key);

  @override
  State<MyRotationTransition> createState() => _MyRotationTransitionState();
}

class _MyRotationTransitionState extends State<MyRotationTransition> with SingleTickerProviderStateMixin{
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(seconds: 1),reverseDuration: Duration(seconds: 3),);
    animation=Tween<double>(begin: 0,end: 1).animate(CurvedAnimation(parent: animationController, curve: Curves.easeIn,reverseCurve: Curves.linear));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Rotate Transition'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            10.verticalSpace,
            RotationTransition(
              turns: animation,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border(
                    top: BorderSide(
                      width: 3,
                      color: Colors.black,
                    )
                  )
                ),
              ),
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
