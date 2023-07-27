import 'package:animation_flutter/hero_animation.dart';
import 'package:animation_flutter/lottie_and_animatedText.dart';
import 'package:animation_flutter/my_animated_container.dart';
import 'package:animation_flutter/my_animation_controller.dart';
import 'package:animation_flutter/my_ticker.dart';
import 'package:animation_flutter/my_tween_animation_builder.dart';
import 'package:animation_flutter/route_transation/page1.dart';
import 'package:animation_flutter/transforms/transform_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TransformPage(),
    );
  }
}
