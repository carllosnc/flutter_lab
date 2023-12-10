import 'package:flutter/material.dart';

Widget redBox({required Widget child}) {
  return Container(
    padding: const EdgeInsets.all(40),
    color: Colors.red,
    child: Center(child: child),
  );
}

Widget blueBox({required Widget child}) {
  return Container(
    padding: const EdgeInsets.all(40),
    color: Colors.blue,
    child: Center(child: child),
  );
}

Widget greenBox({required Widget child}) {
  return Container(
    padding: const EdgeInsets.all(40),
    color: Colors.green,
    child: Center(child: child),
  );
}

List<Function> boxes = [blueBox, redBox, greenBox];

Widget reduced = boxes[0](
  child: boxes[1](
    child: boxes[2](
      child: const Text('Hello World'),
    ),
  ),
);

class DynamicWidgetPage extends StatefulWidget {
  const DynamicWidgetPage({super.key});

  @override
  State<DynamicWidgetPage> createState() => _DynamicWidgetPageState();
}

class _DynamicWidgetPageState extends State<DynamicWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dynamic Widgets')),
      body: Center(
        child: SizedBox(
          width: 500,
          height: 500,
          child: Column(
            children: [
              reduced,
              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('Change'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
