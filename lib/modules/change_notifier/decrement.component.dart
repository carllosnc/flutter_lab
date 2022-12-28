import 'package:flutter/material.dart';
import 'controller.dart';

class DecrementButton extends StatefulWidget {
  const DecrementButton({super.key});

  @override
  State<DecrementButton> createState() => _DecrementButtonState();
}

class _DecrementButtonState extends State<DecrementButton> {
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
        controller.decrement();
      },
      child: SizedBox(
        width: 120,
        child: Center(
          child: Text('Decrement: ${controller.value}'),
        ),
      ),
    );
  }
}
