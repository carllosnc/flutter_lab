import 'package:flutter/material.dart';
import 'decrement_component.dart';
import 'increment_component.dart';

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
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IncrementButton(),
            SizedBox(height: 20),
            DecrementButton(),
          ],
        ),
      ),
    );
  }
}
