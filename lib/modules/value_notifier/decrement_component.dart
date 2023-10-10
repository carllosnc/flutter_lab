import 'package:flutter/material.dart';
import 'controller.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: counter.count,
      builder: (context, value, child) {
        return ElevatedButton(
          onPressed: () {
            counter.decrement();
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
