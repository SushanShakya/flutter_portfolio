import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height - kToolbarHeight,
      width: size.width,
    );
  }
}
