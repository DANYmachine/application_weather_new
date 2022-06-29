import 'dart:async';
import 'package:flutter/material.dart';

import '../Pages/HomePage/1.HomePage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(milliseconds: 3000),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(title: 'Flutter weather app'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF51A3E0),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: const AssetImage('lib/assets/splash.gif'),
            ),
            const SizedBox(
              height: 110,
            ),
            const Text(
              'Your Weather App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
