import 'package:flutter/material.dart';

class MyAnimatedDefaultTextStyle extends StatefulWidget {
  const MyAnimatedDefaultTextStyle({Key? key}) : super(key: key);

  @override
  State<MyAnimatedDefaultTextStyle> createState() => _MyAnimatedDefaultTextStyleState();
}

class _MyAnimatedDefaultTextStyleState extends State<MyAnimatedDefaultTextStyle> {

  bool _switcher=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated DefaultTextStyle'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedDefaultTextStyle(
             style: _getTextStyle(),
          duration: Duration(
                seconds: 1,
              ),
                child: Text('My Animation Text'),
              ),
              SizedBox(
                height: 10,
              ),
              IconButton(onPressed: (){
                setState(() {
                  _switcher=!_switcher;
                });
              }, icon: Icon(Icons.style)),
            ]),
      ),
    );
  }

  TextStyle _getTextStyle() {
    return _switcher? TextStyle(
    fontSize: 15,
      fontWeight: FontWeight.w300,
      color: Colors.red
    ) : TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w900,
        color: Colors.blue
    );
  }
}
