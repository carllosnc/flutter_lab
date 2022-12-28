class CounterController {
  static final _instance = CounterController._();

  CounterController._();

  factory CounterController() {
    return _instance;
  }

  int counter = 0;

  increment() {
    counter++;
  }

  decrement() {
    counter--;
  }
}
