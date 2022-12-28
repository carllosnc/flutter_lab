import 'package:flutter/material.dart';
import 'increment.component.dart';
import 'decrement.component.dart';

class StreamsPage extends StatefulWidget {
  const StreamsPage({super.key});

  @override
  State<StreamsPage> createState() => StreamsPageState();
}

class StreamsPageState extends State<StreamsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Streams')),
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
