import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Reactive')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/value_notifier');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Value notifier')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/change_notifier');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Change notifier')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/streams');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Streams / Broadcast')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/stateful_builder');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Stateful Builder')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
