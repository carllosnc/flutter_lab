import 'package:flutter/material.dart';
import 'counter_state.dart';

mixin CounterIncrement on CounterState {
  ElevatedButton incrementButton() {
    return ElevatedButton(
      onPressed: () {
        increment();
      },
      child: SizedBox(
        width: 120,
        child: Center(child: Text('Increment: $value')),
      ),
    );
  }
}
