import 'package:flutter/material.dart';
import 'counter/counter_mixin.dart';
import 'counter/counter_state.dart';

class DecrementButton extends StatefulWidget {
  const DecrementButton({super.key});

  @override
  State<DecrementButton> createState() => _DecrementButtonState();
}

class _DecrementButtonState extends State<DecrementButton> with CounterMixin {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: counter.decrement,
      child: Text('Decrement ${counter.value}'),
    );
  }
}
