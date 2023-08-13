import 'package:flutter/material.dart';

part 'counter_increment.dart';
part 'counter_decrement.dart';
part 'counter_render.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => CounterState();
}

class CounterState extends State<Counter> {
  //values
  var _counter = 0;

  //actions
  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    setState(() {
      _counter--;
    });
  }

  //render
  @override
  Widget build(BuildContext context) {
    return render();
  }
}
