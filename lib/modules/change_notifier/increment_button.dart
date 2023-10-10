import 'package:flutter/material.dart';
import 'counter/counter_mixin.dart';
import 'counter/counter_state.dart';

class IncrementButton extends StatefulWidget {
  const IncrementButton({super.key});

  @override
  State<IncrementButton> createState() => _IncrementButtonState();
}

class _IncrementButtonState extends State<IncrementButton> with CounterMixin {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: counter.increment,
      child: Text('Increment ${counter.value}'),
    );
  }
}
