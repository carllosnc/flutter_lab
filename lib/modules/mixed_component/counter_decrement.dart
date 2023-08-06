import 'package:flutter/material.dart';

import 'counter_state.dart';

mixin CounterDecrement on CounterState {
  ElevatedButton decrementButton() {
    return ElevatedButton(
      onPressed: decrement,
      child: SizedBox(
        width: 120,
        child: Center(child: Text('Decrement: $value')),
      ),
    );
  }
}
