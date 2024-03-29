import 'package:flutter/material.dart';

enum RevealDirection {
  top,
  bottom,
  left,
  right;

  Offset getOffset() {
    switch (this) {
      case RevealDirection.top:
        return const Offset(0, -0.6);
      case RevealDirection.bottom:
        return const Offset(0, 0.6);
      case RevealDirection.left:
        return const Offset(-0.6, 0);
      case RevealDirection.right:
        return const Offset(0.6, 0);
    }
  }
}

class RevealEffect extends StatefulWidget {
  final Duration duration;
  final Widget child;
  final RevealDirection direction;

  const RevealEffect({
    super.key,
    required this.duration,
    required this.child,
    this.direction = RevealDirection.top,
  });

  @override
  State<RevealEffect> createState() => _RevealEffectState();
}

class _RevealEffectState extends State<RevealEffect> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.duration, () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      offset: _isVisible ? Offset.zero : widget.direction.getOffset(),
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 200),
      child: AnimatedOpacity(
        opacity: _isVisible ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: widget.child,
      ),
    );
  }
}
