import 'package:flutter/material.dart';
import './counter.dart';

class MixedPage extends StatefulWidget {
  const MixedPage({super.key});

  @override
  State<MixedPage> createState() => _MixedPageState();
}

class _MixedPageState extends State<MixedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mixed component')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Counter(),
          ],
        ),
      ),
    );
  }
}
