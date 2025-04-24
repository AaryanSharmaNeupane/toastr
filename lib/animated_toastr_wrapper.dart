import 'package:flutter/material.dart';

class AnimatedToastrWrapper extends StatefulWidget {
  const AnimatedToastrWrapper({
    super.key,
    required this.child,
    required this.closeDuration,
    required this.onClose,
  });
  final Widget child;
  final Duration closeDuration;
  final VoidCallback onClose;

  @override
  State<AnimatedToastrWrapper> createState() => _AnimatedToastrWrapperState();
}

class _AnimatedToastrWrapperState extends State<AnimatedToastrWrapper> {
  double opacity = 0.0;
  @override
  void initState() {
    super.initState();
    _fadeIn();
  }

  void _fadeIn() {
    Future.delayed(const Duration(), () {
      if (mounted) {
        setState(() {
          opacity = 1.0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: Duration(
        milliseconds: 300,
      ),
      child: widget.child,
    );
  }
}
