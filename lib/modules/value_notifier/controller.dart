import 'package:flutter/material.dart';

class CounterController {
  static final _instance = CounterController._();

  CounterController._();

  factory CounterController() {
    return _instance;
  }

  ValueNotifier<int> counter = ValueNotifier<int>(0);

  increment() {
    counter.value++;
  }

  decrement() {
    counter.value--;
  }
}
