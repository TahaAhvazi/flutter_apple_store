// ignore_for_file: file_names

import 'package:flutter/material.dart';

class AnimateTwo extends StatefulWidget {
  final Widget child;
  const AnimateTwo({super.key, required this.child});

  @override
  State<AnimateTwo> createState() => _AnimateTwoState();
}

class _AnimateTwoState extends State<AnimateTwo> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
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
    _controller.forward(from: 0.35);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: widget.child,
    );
  }
}
