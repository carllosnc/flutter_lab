import 'dart:isolate';

import 'package:flutter/material.dart';

getDays() {
  int fib(int n) {
    if (n <= 0) return 0;
    if (n == 1) return 1;
    return fib(n - 1) + fib(n - 2);
  }

  dynamic value = fib(40);

  return value;
}

class IsolatesPage extends StatefulWidget {
  const IsolatesPage({super.key});

  @override
  State<IsolatesPage> createState() => _IsolatesPageState();
}

class _IsolatesPageState extends State<IsolatesPage> {
  num fibValue = 0;

  running() async {
    var value = await Isolate.run(() => getDays());

    setState(() {
      fibValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [
          Text('Value from isolate: $fibValue'),
          Center(
            child: FilledButton(
              onPressed: () {
                running();
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 500,
                      width: double.infinity,
                      color: Colors.red,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('BottomSheet'),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: const Text('Run function'),
            ),
          ),
        ],
      ),
    );
  }
}
