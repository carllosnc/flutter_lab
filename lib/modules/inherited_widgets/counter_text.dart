import 'package:flutter/material.dart';
import './counter_provider.dart';

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = CounterProvider.of(context)?.counter ?? 0;

    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}
