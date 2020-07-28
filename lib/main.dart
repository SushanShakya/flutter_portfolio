import 'package:flutter/material.dart';
// import 'package:portfolio/Views/home.dart';
import 'package:portfolio/Views/splash.dart';

void main() => runApp(Portfolio());

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
