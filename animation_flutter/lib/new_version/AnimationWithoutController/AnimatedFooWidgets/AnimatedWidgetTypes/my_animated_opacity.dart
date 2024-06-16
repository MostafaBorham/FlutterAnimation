import 'package:flutter/material.dart';

class MyAnimatedOpacity extends StatefulWidget {
  const MyAnimatedOpacity({Key? key}) : super(key: key);

  @override
  State<MyAnimatedOpacity> createState() => _MyAnimatedOpacityState();
}

class _MyAnimatedOpacityState extends State<MyAnimatedOpacity> {

  double _opacity=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Opacity'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
               opacity: _opacity, duration: Duration(
                seconds: 1,
              ),
                child: FlutterLogo(),
              ),
              SizedBox(
                height: 10,
              ),
              IconButton(onPressed: (){
                setState(() {
                  _opacity=1;
                });
              }, icon: Icon(Icons.visibility)),
              SizedBox(
                height: 2,
              ),
              IconButton(onPressed: (){
                setState(() {
                  _opacity=0;
                });

              }, icon: Icon(Icons.visibility_off)),
            ]),
      ),
    );
  }
}
