// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ThirdAnimate extends StatefulWidget {
  final Widget child;
  const ThirdAnimate({super.key, required this.child});

  @override
  State<ThirdAnimate> createState() => _ThirdAnimateState();
}

class _ThirdAnimateState extends State<ThirdAnimate>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1500),
  );
  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller.forward(from: 0.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _animation,
      axis: Axis.horizontal,
      axisAlignment: -1,
      child: widget.child,
    );
  }
}
