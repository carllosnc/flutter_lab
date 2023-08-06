import 'package:flutter/material.dart';
import 'counter.dart';

mixin CounterState<T extends Counter> on State<T> {
  int value = 0;

  void increment() {
    setState(() {
      value++;
    });
  }

  void decrement() {
    setState(() {
      value--;
    });
  }
}
