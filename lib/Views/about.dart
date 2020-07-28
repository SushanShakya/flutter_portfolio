import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Views/Widgets/animator.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height - kToolbarHeight,
      // color: Colors.blue,
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/id.jpg"),
                    backgroundColor: Colors.deepPurple,
                    radius: 100.0,
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Center(
                    child: FlareActor(
                      "assets/love.flr",
                      alignment: Alignment.center,
                      fit: BoxFit.scaleDown,
                      animation: "Untitled",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 180.0,
                    width: 180.0,
                    child: Image.asset(
                      'assets/flutter.png',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Animator(
              y: 20.0,
              child: Column(
                children: [
                  Text(
                    "Sushan Shakya",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .copyWith(color: Colors.black),
                  ),
                  Text(
                    "Flutter Developer",
                    style: Theme.of(context).textTheme.headline4,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
