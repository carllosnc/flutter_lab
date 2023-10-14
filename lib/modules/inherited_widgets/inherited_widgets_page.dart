import 'package:flutter/material.dart';
import 'counter_provider.dart';
import 'counter_text.dart';

class InheritedWidgetsPage extends StatefulWidget {
  const InheritedWidgetsPage({super.key});

  @override
  State<InheritedWidgetsPage> createState() => _InheritedWidgetsPageState();
}

class _InheritedWidgetsPageState extends State<InheritedWidgetsPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      key: UniqueKey(),
      counter: counter,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Inherited Widgets'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Inherited Widgets'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Text('Increment'),
              ),
              const SizedBox(height: 20),
              const CounterText(),
            ],
          ),
        ),
      ),
    );
  }
}
