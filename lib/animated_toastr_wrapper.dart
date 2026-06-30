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
  static const Duration _animationDuration = Duration(milliseconds: 300);

  double opacity = 0.0;
  bool _isClosing = false;

  @override
  void initState() {
    super.initState();
    _fadeIn();
    _fadeOutAfterDuration();
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

  void _fadeOutAfterDuration() {
    Future.delayed(widget.closeDuration, () {
      if (mounted) {
        setState(() {
          _isClosing = true;
          opacity = 0.0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: _animationDuration,
      onEnd: _isClosing ? widget.onClose : null,
      child: widget.child,
    );
  }
}
