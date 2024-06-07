import 'package:flutter/material.dart';

class TransformPage extends StatefulWidget {
  const TransformPage({Key? key}) : super(key: key);

  @override
  State<TransformPage> createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  double sliderValue = 0;
  double aContainerHeight = 50;
  double aContainerWidth = 50;
  Color aContainerColor = Colors.red;
  double aContainerRadius = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: 3.14 * sliderValue, //pi=180 degree==3.14==22/7
            origin: Offset(-25, -25),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Transform.scale(
            scale: (1 * sliderValue) % 3,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Transform.translate(
            offset: Offset(sliderValue, 0),

            /// in center
            child: Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Transform(transform: Matrix4.rotationZ(3.14/4)..scale(1.5)..translate(100.0),child: Container(
            width: 50,
            height: 50,
            color: Colors.yellow,
          ),
          ),
          const SizedBox(
            height: 50,
          ),
          AnimatedContainer(duration: Duration(seconds: 2),
          curve: Curves.easeInCubic,
          height: aContainerHeight,
          width: aContainerWidth,
          decoration: BoxDecoration(
            color: aContainerColor,
            borderRadius: BorderRadius.circular(aContainerRadius),
          ),),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              aContainerHeight=100;
              aContainerWidth=100;
              aContainerColor=Colors.orangeAccent;
              aContainerRadius=50;
            });
          }, child: Text('Animate')),
          const SizedBox(
            height: 70,
          ),
          Slider(
              value: sliderValue,
              min: 0,
              max: 50,
              onChanged: (newVal) {
                setState(() {
                  sliderValue = newVal;
                });
              }),
        ],
      ),
    );
  }
}
