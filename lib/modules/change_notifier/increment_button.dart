import 'package:flutter/material.dart';
import './state.dart';

class IncrementButton extends StatefulWidget {
  const IncrementButton({super.key});

  @override
  State<IncrementButton> createState() => _IncrementButtonState();
}

class _IncrementButtonState extends State<IncrementButton> {
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
    super.dispose();
    counter.removeListener(action);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: counter.increment,
      child: Text('Increment ${counter.value}'),
    );
  }
}
