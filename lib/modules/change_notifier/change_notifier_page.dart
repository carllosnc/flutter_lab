import 'package:flutter/material.dart';
import './increment_button.dart';
import './decrement_button.dart';

class ChangeNotifierPage extends StatelessWidget {
  const ChangeNotifierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change notifier'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Change notifier',
            ),
            SizedBox(height: 10),
            IncrementButton(),
            SizedBox(height: 10),
            DecrementButton()
          ],
        ),
      ),
    );
  }
}
