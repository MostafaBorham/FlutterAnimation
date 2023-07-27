import 'package:flutter/material.dart';

class TransformPage extends StatefulWidget {
  const TransformPage({Key? key}) : super(key: key);

  @override
  State<TransformPage> createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  double sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: 3.14 * sliderValue, //pi=180 degree==3.14==22/7
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
