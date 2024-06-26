import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_reactive/app.dart';
import 'package:flutter_reactive/modules/signals/signals.dart';
import 'package:signals/signals.dart';
import './modules/sqlite/database.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  Gemini.init(apiKey: "");

  effect(() {
    debugPrint('counter: ${counter.value}');
    debugPrint('fontSize: ${fontSize.value}');
    debugPrint('firstValue: ${firstValue.value}');
    debugPrint('secondValue: ${secondValue.value}');
    debugPrint('sum: $sum');
  });

  dogDatabase.init();

  runApp(const App());
}
