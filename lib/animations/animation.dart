import 'package:flutter/material.dart';

class Animate extends StatefulWidget {
  final Widget myChild;
  const Animate({super.key, required this.myChild});

  @override
  // ignore: library_private_types_in_public_api
  _AnimateState createState() => _AnimateState();
}

class _AnimateState extends State<Animate> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _controller.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: widget.myChild,
        );
      },
    );
  }
}
