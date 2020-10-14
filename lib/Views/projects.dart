import 'package:flutter/material.dart';
import 'package:portfolio/Models/project_model.dart';
import 'package:portfolio/Views/Widgets/project_widget.dart';

class Projects extends StatelessWidget {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    projects.shuffle();
    return Container(
      height: size.height - kToolbarHeight,
      width: size.width,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: PageView.builder(
                allowImplicitScrolling: false,
                physics: BouncingScrollPhysics(),
                controller: _controller,
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return Project(
                    title: projects[index].title,
                    image: projects[index].image,
                  );
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  _controller.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
                child: Container(
                  height: size.height - kToolbarHeight,
                  width: 100,
                  color: Colors.grey.shade200,
                  child: Center(
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                },
                child: Container(
                  height: size.height - kToolbarHeight - 10,
                  width: 100,
                  color: Colors.grey.shade200,
                  child: Center(
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
