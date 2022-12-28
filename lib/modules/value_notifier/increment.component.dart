import 'package:flutter/material.dart';
import 'controller.dart';

class IncrementButton extends StatelessWidget {
  IncrementButton({super.key});

  final controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.counter,
      builder: (context, value, child) {
        return ElevatedButton(
          onPressed: () {
            controller.increment();
          },
          child: SizedBox(
            width: 120,
            child: Center(
              child: Text('Increment: $value'),
            ),
          ),
        );
      },
    );
  }
}
