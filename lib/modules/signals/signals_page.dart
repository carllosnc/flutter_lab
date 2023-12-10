import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import './signals.dart';

class SignalsPage extends StatelessWidget {
  const SignalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signals'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Watch(
            (context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      color: counter.value % 2 == 0 ? Colors.red : Colors.blue,
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'Counter: ${counter.value}',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Increment(),
                  const SizedBox(height: 20),
                  const Decrement(),
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          const Element(),
          const SizedBox(height: 30),
          const Sum(),
        ],
      ),
    );
  }
}

class Increment extends StatelessWidget {
  const Increment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Watch(
      (context) {
        return ElevatedButton(
          onPressed: () {
            counter.value++;
          },
          child: Text('Increment $counter'),
        );
      },
    );
  }
}

//decrement

class Decrement extends StatelessWidget {
  const Decrement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Watch((context) {
      return ElevatedButton(
        onPressed: () {
          counter.value--;
        },
        child: Text('Decrement $counter'),
      );
    });
  }
}

class Element extends StatelessWidget {
  const Element({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        fontSize.value++;
      },
      child: Text(
        'Element',
        style: TextStyle(
          fontSize: fontSize.watch(context),
        ),
      ),
    );
  }
}

class Sum extends StatelessWidget {
  const Sum({super.key});

  @override
  Widget build(BuildContext context) {
    return Watch((context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Computed sum: $sum',
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  firstValue.value++;
                },
                child: Text('Increment first value $firstValue'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  secondValue.value--;
                },
                child: Text('Decrement second value $secondValue'),
              ),
            ],
          ),
        ],
      );
    });
  }
}
