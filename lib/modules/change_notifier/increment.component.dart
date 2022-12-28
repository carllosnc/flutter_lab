import 'package:flutter/material.dart';
import 'controller.dart';

class IncrementButton extends StatefulWidget {
  const IncrementButton({super.key});

  @override
  State<IncrementButton> createState() => IncrementButtonState();
}

class IncrementButtonState extends State<IncrementButton> {
  final controller = CounterController();

  action() {
    setState(() {});
  }

  @override
  void initState() {
    controller.addListener(action);

    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(action);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.increment();
      },
      child: SizedBox(
        width: 120,
        child: Center(
          child: Text('Increment: ${controller.value}'),
        ),
      ),
    );
  }
}
