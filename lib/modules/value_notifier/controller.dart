import 'package:flutter/material.dart';

class _Counter {
  ValueNotifier<int> count = ValueNotifier<int>(0);

  increment() {
    count.value++;
  }

  decrement() {
    count.value--;
  }
}

var counter = _Counter();
