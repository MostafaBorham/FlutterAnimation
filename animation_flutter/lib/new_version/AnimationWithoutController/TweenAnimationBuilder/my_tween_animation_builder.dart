import 'package:flutter/material.dart';

class MyTweenAnimationBuilder extends StatelessWidget {
  const MyTweenAnimationBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation Builder'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TweenAnimationBuilder(
            tween: IntTween(begin: 0,end: 100),
            duration: const Duration(seconds: 2),
            curve: Curves.easeIn,
            builder: (context, value, child) => Column(
              children: [
                Text(value.toString(),style: Theme.of(context).textTheme.labelLarge,),
                const SizedBox(height: 10,),
                child??Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
              ],
            ),
            child: ElevatedButton(onPressed: (){}, child: const Text('Animate')),
          ),
        ],
      ),
    );
  }
}
