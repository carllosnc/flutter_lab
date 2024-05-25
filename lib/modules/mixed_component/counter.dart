import 'package:flutter/material.dart';
import './counter_state.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> with CounterState {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: increment,
          child: SizedBox(
            width: 120,
            child: Center(child: Text('Increment: $value')),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: decrement,
          child: SizedBox(
            width: 120,
            child: Center(child: Text('Decrement: $value')),
          ),
        )
      ],
    );
  }
}
