import 'package:flutter/material.dart';
import 'controller.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: CounterController.value,
      stream: CounterController.controller.stream,
      builder: (context, snapshot) {
        return ElevatedButton(
          onPressed: () {
            CounterController.decrement();
          },
          child: SizedBox(
            width: 120,
            child: Center(
              child: Text('Decrement: ${snapshot.data}'),
            ),
          ),
        );
      },
    );
  }
}
