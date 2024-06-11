import 'dart:async';

class CounterController {
  static int value = 0;

  static final controller = StreamController<int>.broadcast();

  static increment() {
    value++;
    controller.add(value);
  }

  static decrement() {
    value--;
    controller.add(value);
  }
}
