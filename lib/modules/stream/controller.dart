import 'dart:async';

class CounterController {
  static final _instance = CounterController._();

  CounterController._();

  factory CounterController() {
    return _instance;
  }

  final controller = StreamController<int>.broadcast();

  int value = 0;

  increment() {
    value++;
    controller.add(value);
  }

  decrement() {
    value--;
    controller.add(value);
  }
}
