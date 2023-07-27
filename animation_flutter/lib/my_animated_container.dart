import 'package:animation_flutter/my_curve.dart';
import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({Key? key}) : super(key: key);

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool bigger=false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(duration: Duration(seconds: 5),child: FlutterLogo(size: bigger?200 : 50,curve: MyCurve(),),),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          setState(() {
            bigger=!bigger;
          });
        }, child: Text(bigger?'-':"+"))
      ],
    );
  }
}
