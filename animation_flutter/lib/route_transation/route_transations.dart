import 'package:flutter/cupertino.dart';

class CustomSlideTransition extends PageRouteBuilder {
  final Widget page;

  CustomSlideTransition(this.page)
      : super(
            pageBuilder: (context, animation, sAnimation) => page,
            transitionsBuilder: (context, animation, sAnimation, child) {
              var begin=const Offset(1, 0);
              var end=Offset.zero;
              var tween=Tween(begin: begin,end: end);///create tween (Animation Source)
              var curvedAnimation= CurvedAnimation(parent: animation, curve: Curves.elasticOut,);///create custom animation object
              return SlideTransition(position: curvedAnimation.drive(tween),child: child,);
            });
}

class CustomScaleTransition extends PageRouteBuilder{
  final Widget page;

  CustomScaleTransition(this.page):super(pageBuilder: (context,animation,sAnimation)=>page,transitionsBuilder: (context,animation,sAnimation,child){
    var begin=0.0;
    var end=1.0;
    var tween=Tween<double>(begin: begin,end: end);
    var curvedAnimation=CurvedAnimation(parent: animation, curve: Curves.elasticIn);
    return ScaleTransition(scale: curvedAnimation.drive(tween),child: child,);
  });
}

class CustomRotateTransition extends PageRouteBuilder{
  final Widget page;

  CustomRotateTransition(this.page) : super(pageBuilder: (context,animation,sAnimation)=>page,transitionsBuilder: (context,animation,sAnimation,child){
    var begin=0.0;
    var end=1.0;
    var tween=Tween<double>(begin: begin,end: end);
    var curvedAnimation=CurvedAnimation(parent: animation, curve: Curves.linear);
    return RotationTransition(turns: curvedAnimation.drive(tween),child: child,);
  });
}

class CustomSizeTransition extends PageRouteBuilder{
  final Widget page;
  CustomSizeTransition(this.page):super(pageBuilder: (context,animation,sAnimation)=>page,transitionsBuilder: (context,animation,sAnimation,child){
    return Align(child: SizeTransition(sizeFactor: animation,child: child,),);
  });


}

class CustomFadeTransition extends PageRouteBuilder{
  final Widget page;
  CustomFadeTransition(this.page) : super(pageBuilder: (context,animation,sAnimation)=>page,transitionsBuilder: (context,animation,sAnimation,child){
    return FadeTransition(opacity: animation,child: child,);
  });
}

class CustomScaleRotateTransition extends PageRouteBuilder{
  final Widget page;
  CustomScaleRotateTransition(this.page) : super(pageBuilder: (context,animation,sAnimation)=>page,transitionsBuilder: (context,animation,sAnimation,child){
    return ScaleTransition(scale: animation,child: RotationTransition(turns: animation,child: child,),);
  });
}/// ممكن تخلط مجموعة انواع من transitions مع بعض مش شرط دول بس