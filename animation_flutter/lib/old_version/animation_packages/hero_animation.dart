import 'package:flutter/material.dart';

class HeroHomePage extends StatelessWidget {
  const HeroHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListTile(
        leading: const Hero(
          tag: 'Flutter Logo',
          child: FlutterLogo(
            size: 20,
          ),
        ),
        title: const Text('Flutter Logo'),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const DetailsPage()));
        },
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Hero(
        tag: 'Flutter Logo',
        child: Center(
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
