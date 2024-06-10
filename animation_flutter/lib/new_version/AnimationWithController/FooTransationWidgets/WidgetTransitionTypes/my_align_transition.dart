import 'package:flutter/material.dart';

class MyAlignTransition extends StatefulWidget {
  const MyAlignTransition({Key? key}) : super(key: key);

  @override
  State<MyAlignTransition> createState() => _MyAlignTransitionState();
}

class _MyAlignTransitionState extends State<MyAlignTransition>
    with SingleTickerProviderStateMixin {
  late Animation<AlignmentGeometry> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1),
        reverseDuration: const Duration(seconds: 3));
    animation = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(CurvedAnimation(
            parent: animationController,
            curve: Curves.easeInOut,
            reverseCurve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Align Transition'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: AlignTransition(
              alignment: animation,
              child: const CircleAvatar(
                backgroundColor: Colors.yellow,
                radius: 20,
              ),
            ),
          ),
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
    );
  }
}
