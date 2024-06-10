import 'package:animation_flutter/new_version/AnimationWithController/FooTransationWidgets/FunctionTransitionTypes/my_rotation_transition.dart';
import 'package:animation_flutter/new_version/AnimationWithController/FooTransationWidgets/WidgetTransitionTypes/my_align_transition.dart';
import 'package:animation_flutter/new_version/AnimationWithoutController/AnimatedFooWidgets/AnimatedFunctionTypes/my_animated_scale.dart';
import 'package:animation_flutter/new_version/AnimationWithoutController/AnimatedFooWidgets/AnimatedWidgetTypes/my_animated_container.dart';
import 'package:animation_flutter/new_version/AnimationWithoutController/TweenAnimationBuilder/my_tween_animation_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        ScreenUtil.init(context);
        return Theme(data: ThemeData(
          primarySwatch: Colors.blue,
        ), child: const MyRotationTransition());
      },
    );
  }
}
