import 'package:flutter/material.dart';

int counter = 0;

class StatefulBuilderPage extends StatelessWidget {
  const StatefulBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful builder')),
      body: Center(
        child: StatefulBuilder(builder: (context, setState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: SizedBox(
                  width: 120,
                  child: Center(
                    child: Text('Increment: $counter'),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                child: SizedBox(
                  width: 120,
                  child: Center(
                    child: Text('Increment: $counter'),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
