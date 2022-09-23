import 'dart:async';

import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Duration duration = Duration(seconds: 2);

    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage(
                'image/flutterdev.jpg',
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: const Image(
                image: NetworkImage(
                  'https://www.appdevelopmentagency.com/wp-content/sabai/File/files/1634549741211058398616d3fedf1ffc.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
