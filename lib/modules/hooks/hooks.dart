import 'dart:developer';
import 'package:flutter/material.dart';
import './react.dart';

Widget counter() {
  var counterState = UseState(0);

  counterState.useEffect(() {
    log(counterState.value);
  });

  return Render(
    valueListenable: counterState,
    builder: (context, value, child) {
      return Column(
        children: [
          FilledButton(
            onPressed: () => counterState.value++,
            child: const Text('+'),
          ),
          FilledButton(
            onPressed: () => counterState.value--,
            child: const Text('-'),
          ),
          Text('Counter value: $value'),
        ],
      );
    },
  );
}
