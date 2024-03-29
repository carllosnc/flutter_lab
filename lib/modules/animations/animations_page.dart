import 'package:flutter/material.dart';
import './reveal_effect.dart';

class AnimationsPage extends StatefulWidget {
  const AnimationsPage({super.key});

  @override
  State<AnimationsPage> createState() => _AnimationsPageState();
}

class _AnimationsPageState extends State<AnimationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RevealEffect(
              duration: const Duration(milliseconds: 300),
              child: Container(
                color: Colors.red,
                width: 600,
                height: 100,
                child: const Center(
                  child: Text('Top'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RevealEffect(
              duration: const Duration(milliseconds: 400),
              direction: RevealDirection.bottom,
              child: Container(
                color: Colors.blue,
                width: 600,
                height: 100,
                child: const Center(
                  child: Text('Bottom'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RevealEffect(
              duration: const Duration(milliseconds: 500),
              direction: RevealDirection.left,
              child: Container(
                color: Colors.green,
                width: 600,
                height: 100,
                child: const Center(
                  child: Text('Left'),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RevealEffect(
              duration: const Duration(milliseconds: 600),
              direction: RevealDirection.right,
              child: Container(
                color: Colors.purple,
                width: 600,
                height: 100,
                child: const Center(
                  child: Text('Right'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
