import 'package:flutter/material.dart';
import 'package:portfolio/Views/about.dart';
import 'package:portfolio/Views/projects.dart';

class Home extends StatelessWidget {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: GestureDetector(
          onTap: () {
            controller.animateToPage(0,
                duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
          },
          child: Text(
            "Sushan Shakya",
            style: TextStyle(
                color: Colors.black, letterSpacing: 5.0, fontSize: 20.0),
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              controller.animateToPage(1,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut);
              // showDialog(
              //     context: context,
              //     child: AlertDialog(
              //       title: Text("Sorry !"),
              //       content: Text(
              //           "The page you are trying to access is currently under construction."),
              //     ));
            },
            child: Text(
              "Projects",
              style: TextStyle(
                  color: Colors.black, letterSpacing: 5.0, fontSize: 20.0),
            ),
          ),
          MaterialButton(
            onPressed: () {
              showDialog(
                  context: context,
                  child: AlertDialog(
                    title: Text("Sorry !"),
                    content: Text(
                        "The page you are trying to access is currently under construction."),
                  ));
            },
            child: Text(
              "Resume",
              style: TextStyle(
                  color: Colors.black, letterSpacing: 5.0, fontSize: 20.0),
            ),
          )
        ],
      ),
      body: PageView(
        controller: controller,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          About(),
          Projects(),
        ],
      ),
    );
  }
}
