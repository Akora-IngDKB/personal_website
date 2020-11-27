import 'package:flutter/material.dart';

class Typewriter extends StatefulWidget {
  final String text;
  final Curve curve;
  final TextStyle textStyle;
  final VoidCallback onEnd;

  Typewriter(
    this.text, {
    this.curve = Curves.easeInOut,
    this.textStyle,
    this.onEnd,
  });

  @override
  _TypewriterState createState() => _TypewriterState();
}

class _TypewriterState extends State<Typewriter> with TickerProviderStateMixin {
  Animation<int> _characterCount;
  AnimationController controller;

  int _stringIndex;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _stringIndex = _stringIndex == null ? 0 : _stringIndex + 1;

    _characterCount = StepTween(begin: 0, end: widget.text.length).animate(
      CurvedAnimation(
        parent: controller,
        curve: widget.curve,
      ),
    )..addListener(() {
        setState(() {});
      });

    controller.forward();

    controller.addListener(() {
      if (widget.onEnd != null &&
          controller.status == AnimationStatus.completed) {
        widget.onEnd();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _characterCount == null
          ? null
          : AnimatedBuilder(
              animation: _characterCount,
              builder: (BuildContext context, Widget child) {
                String text = widget.text.substring(0, _characterCount.value);
                return Text(text, style: widget.textStyle);
              },
            ),
    );
  }
}
