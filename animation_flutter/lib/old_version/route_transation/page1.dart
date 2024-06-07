import 'package:animation_flutter/route_transation/page2.dart';
import 'package:animation_flutter/route_transation/route_transations.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(CustomScaleRotateTransition(const Page2()));
        }, child: const Text('Go to Page2')),
      ),
    );
  }
}
