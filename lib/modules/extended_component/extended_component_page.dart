import 'package:flutter/material.dart';
import './counter.dart';

class ExtendedComponentPage extends StatelessWidget {
  const ExtendedComponentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Extended Component')),
      body: const Center(
        child: Counter(),
      ),
    );
  }
}
