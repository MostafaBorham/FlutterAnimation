import 'package:flutter/material.dart';

class MyAnimatedRotation extends StatefulWidget {
  const MyAnimatedRotation({Key? key}) : super(key: key);

  @override
  State<MyAnimatedRotation> createState() => _MyAnimatedRotationState();
}

class _MyAnimatedRotationState extends State<MyAnimatedRotation> {

  double _turns=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Rotation'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedRotation(
                alignment: Alignment.topRight,
                turns: _turns, duration: Duration(
                seconds: 1,
              ),
              child: FlutterLogo(),
              ),
              SizedBox(
                height: 10,
              ),
              IconButton(onPressed: (){
                setState(() {
                  _turns+=0.25;
                });
              }, icon: Icon(Icons.rotate_right)),
              SizedBox(
                height: 2,
              ),
              IconButton(onPressed: (){
                setState(() {
                  _turns-=0.25;
                });

              }, icon: Icon(Icons.rotate_left)),
            ]),
      ),
    );
  }
}
