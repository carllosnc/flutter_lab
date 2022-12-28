import 'package:flutter/material.dart';

class CounterController extends ChangeNotifier {
  static final _instance = CounterController._();

  CounterController._();

  factory CounterController() {
    return _instance;
  }

  int _counter = 0;

  increment() {
    _counter++;

    notifyListeners();
  }

  decrement() {
    _counter--;

    notifyListeners();
  }

  get value => _counter;
}
