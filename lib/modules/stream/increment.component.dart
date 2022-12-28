import 'package:flutter/material.dart';
import 'controller.dart';

class IncrementButton extends StatelessWidget {
  IncrementButton({super.key});

  final counter = CounterController();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: counter.value,
      stream: counter.controller.stream,
      builder: (context, snapshot) {
        return ElevatedButton(
          onPressed: () {
            counter.increment();
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
