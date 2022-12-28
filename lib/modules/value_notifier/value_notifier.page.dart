import 'package:flutter/material.dart';
import 'decrement.component.dart';
import 'increment.component.dart';

class ValueNotifierPage extends StatefulWidget {
  const ValueNotifierPage({super.key});

  @override
  State<ValueNotifierPage> createState() => _ValueNotifierPageState();
}

class _ValueNotifierPageState extends State<ValueNotifierPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Value notifier')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IncrementButton(),
            const SizedBox(height: 20),
            DecrementButton(),
          ],
        ),
      ),
    );
  }
}
