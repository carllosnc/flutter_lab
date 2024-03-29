import 'package:flutter/material.dart';
import './custom_painter.dart';

class CanvasPage extends StatelessWidget {
  const CanvasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: CustomPaint(
          painter: MyPainter(
            Colors.blue,
            'Hello, World!',
          ),
          size: const Size(200, 200),
        ),
      ),
    );
  }
}
