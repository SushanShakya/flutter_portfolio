import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  const Project({Key key, this.title, this.image, this.description})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: _phone(),
          ),
        ),
        Expanded(
          child: Container(
            // color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _phone() {
    return Container(
      height: 600,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 55,
            child: Center(
              child: Container(
                height: 10.0,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 26.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
              ),
              child: Image.asset('assets/projects/$image'),
            ),
          ),
          SizedBox(
            height: 55,
          )
        ],
      ),
    );
  }
}
