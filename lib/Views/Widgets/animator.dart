import 'package:flutter/material.dart';

class Animator extends StatefulWidget {
  final Duration duration;
  final Widget child;
  final double x;
  final double y;
  final double z;
  final int index;
  final AnimationController animationController;

  const Animator(
      {Key key,
      this.duration,
      this.index,
      this.x,
      this.y,
      this.z,
      this.child,
      this.animationController})
      : super(key: key);

  @override
  _AnimatorState createState() => _AnimatorState();
}

class _AnimatorState extends State<Animator> with TickerProviderStateMixin {
  AnimationController controller;
  int index;

  @override
  void initState() {
    super.initState();

    if (widget.index != null) {
      index = widget.index;
    } else {
      index = 1;
    }

    if (widget.animationController != null) {
      controller = widget.animationController;
    } else {
      controller = AnimationController(
          vsync: this, duration: widget.duration ?? Duration(seconds: 2));
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval((1 / 10) * index, 1.0, curve: Curves.fastOutSlowIn),
      ),
    );
    if (widget.animationController == null) {
      controller.forward();
    }

    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return FadeTransition(
          opacity: animation,
          child: Transform(
              transform: Matrix4.translationValues(
                  (widget.x ?? 0.0) * (1.0 - animation.value),
                  (widget.y ?? 0.0) * (1.0 - animation.value),
                  (widget.z ?? 0.0) * (1.0 - animation.value)),
              child: widget.child),
        );
      },
    );
  }
}
