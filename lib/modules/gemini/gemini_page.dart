import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class GeminiPage extends StatefulWidget {
  const GeminiPage({super.key});

  @override
  State<GeminiPage> createState() => _GeminiPageState();
}

class _GeminiPageState extends State<GeminiPage> {
  final gemini = Gemini.instance;

  @override
  Widget build(BuildContext context) {
    gemini.streamGenerateContent('A Brief history about brasil').listen((value) {
      debugPrint(value.output);
    }).onError((e) {
      debugPrint('streamGenerateContent exception');
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: const Center(
        child: Text('Hello world!'),
      ),
    );
  }
}
