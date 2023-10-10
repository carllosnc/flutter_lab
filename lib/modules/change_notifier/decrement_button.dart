import 'package:flutter/material.dart';
import './state.dart';

class DecrementButton extends StatefulWidget {
  const DecrementButton({super.key});

  @override
  State<DecrementButton> createState() => _DecrementButtonState();
}

class _DecrementButtonState extends State<DecrementButton> {
  action() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    counter.addListener(action);
  }

  @override
  void dispose() {
    counter.removeListener(action);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: counter.decrement,
      child: Text('Decrement ${counter.value}'),
    );
  }
}
