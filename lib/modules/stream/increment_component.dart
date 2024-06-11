import 'package:flutter/material.dart';
import './controller.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: CounterController.value,
      stream: CounterController.controller.stream,
      builder: (context, snapshot) {
        return ElevatedButton(
          onPressed: () {
            CounterController.increment();
          },
          child: SizedBox(
            width: 120,
            child: Center(
              child: Text('Increment: ${snapshot.data}'),
            ),
          ),
        );
      },
    );
  }
}
