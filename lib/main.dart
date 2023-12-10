import 'package:flutter/material.dart';
import 'package:flutter_reactive/app.dart';
import 'package:flutter_reactive/modules/signals/signals.dart';
import 'package:signals/signals.dart';

void main(List<String> args) {
  effect(() {
    debugPrint('counter: ${counter.value}');
    debugPrint('fontSize: ${fontSize.value}');
    debugPrint('firstValue: ${firstValue.value}');
    debugPrint('secondValue: ${secondValue.value}');
    debugPrint('sum: $sum');
  });

  runApp(const App());
}
