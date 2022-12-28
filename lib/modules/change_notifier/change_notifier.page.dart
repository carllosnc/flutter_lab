import 'package:flutter/material.dart';
import 'decrement.component.dart';
import 'increment.component.dart';

class ChangeNotifierPage extends StatelessWidget {
  const ChangeNotifierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Notifier')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            IncrementButton(),
            SizedBox(height: 20),
            DecrementButton(),
          ],
        ),
      ),
    );
  }
}
