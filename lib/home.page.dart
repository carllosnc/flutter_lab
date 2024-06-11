import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import './modules/extensions/build_context.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Lab')),
      body: SingleChildScrollView(
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
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/dynamic_widgets');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Dynamic Widgets')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/signals');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Signals')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/overlay_portal');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Overlay Portal')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/isolates');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Isolates')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/canvas');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Canvas')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/layouts');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Layouts')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/gemini');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Gemini')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/animations');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(child: Text('Animations')),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                CustomSnack(context).showSnackBar('Custom SnackBar');

                CustomDialog(context).showCustomDialog(
                  title: 'Custom Dialog',
                  message: 'This is a custom dialog',
                  positiveText: 'OK',
                  onPositive: () {
                    Navigator.of(context).pop();
                  },
                  negativeText: 'Cancel',
                  onNegative: () {
                    Navigator.of(context).pop();
                  },
                );
              },
              child: const SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text('Custom SnackBar'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/rich_text');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(
                  child: Text('Rich Text'),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/sqlite');
              },
              child: const SizedBox(
                height: 40,
                width: double.infinity,
                child: Center(
                  child: Text('SQLite'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
