import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  final String title;
  final String image;

  const Project({Key key, this.title, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.2,
      child: Column(
        children: [Container(), Text(title)],
      ),
    );
  }
}
