import 'package:flutter/material.dart';
import 'controller.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: counter.count,
      builder: (context, value, child) {
        return ElevatedButton(
          onPressed: () {
            counter.increment();
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
