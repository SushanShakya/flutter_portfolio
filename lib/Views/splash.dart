import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Views/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.blue,
          height: size.height,
          width: size.width,
          child: FlareActor(
            "assets/splash.flr",
            alignment: Alignment.center,
            fit: BoxFit.contain,
            animation: "move_phone",
          ),
        ),
      ),
    );
  }
}
