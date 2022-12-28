import 'package:flutter/material.dart';
import 'controller.dart';

class IncrementButton extends StatefulWidget {
  const IncrementButton({super.key});

  @override
  State<IncrementButton> createState() => IncrementButtonState();
}

class IncrementButtonState extends State<IncrementButton> {
  final controller = CounterController();

  @override
  void initState() {
    controller.addListener(() {
      setState(() {});
    });

    super.initState();
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
