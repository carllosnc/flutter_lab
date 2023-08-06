import 'package:flutter/material.dart';
import 'controller.dart';

class DecrementButton extends StatelessWidget {
  DecrementButton({super.key});

  final controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.counter,
      builder: (context, value, child) {
        return ElevatedButton(
          onPressed: () {
            controller.decrement();
          },
          child: SizedBox(
            width: 120,
            child: Center(
              child: Text('Decrement: $value'),
            ),
          ),
        );
      },
    );
  }
}
