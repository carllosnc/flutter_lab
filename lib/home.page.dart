import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Lab')),
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
                child: Center(child: Text('Value Notifier')),
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
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/mixed_component');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Mixed Component')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/extended_component');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Extended Component')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/http_request');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('HTTP Request')),
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
                context.go('/inherited_widgets');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Inherited Widgets')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/responsive');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Responsive')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
