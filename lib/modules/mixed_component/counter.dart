import 'package:flutter/material.dart';
import './counter_state.dart';
import './counter_increment.dart';
import './counter_decrement.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter>
    with CounterState, CounterIncrement, CounterDecrement {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        incrementButton(),
        const SizedBox(
          height: 10,
        ),
        decrementButton(),
      ],
    );
  }
}
