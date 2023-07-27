import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAndAnimatedTextPage extends StatelessWidget {
  const LottieAndAnimatedTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.network('https://assets7.lottiefiles.com/packages/lf20_5XEJb3YBIg.json',),
            SizedBox(height: 20,),
            Lottie.asset('assets/button_anim.json'),
            SizedBox(height: 20,),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  pause: Duration(milliseconds: 200),
                  displayFullTextOnTap: true,
                  repeatForever: true,
                  animatedTexts: [
                    FadeAnimatedText('do IT!'),
                    FadeAnimatedText('do it RIGHT!!'),
                    FadeAnimatedText('do it RIGHT NOW!!!'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: 250.0,
              child: TextLiquidFill(
                text: 'LIQUIDY',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.redAccent,
                textStyle: TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 300.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
