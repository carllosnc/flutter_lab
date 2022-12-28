import 'package:flutter/material.dart';
import 'controller.dart';

class DecrementButton extends StatelessWidget {
  DecrementButton({super.key});

  final counter = CounterController();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: counter.value,
      stream: counter.controller.stream,
      builder: (context, snapshot) {
        return ElevatedButton(
          onPressed: () {
            counter.decrement();
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
