import 'package:flutter/material.dart';
import 'decrement_component.dart';
import 'increment_component.dart';

class ChangeNotifierPage extends StatelessWidget {
  const ChangeNotifierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Notifier')),
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
