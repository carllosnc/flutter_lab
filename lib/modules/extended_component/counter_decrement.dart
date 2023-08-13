part of 'counter.dart';

extension IncrementExtension on CounterState {
  Widget decrementButton() {
    return ElevatedButton(
      onPressed: decrement,
      child: SizedBox(
        width: 120,
        child: Center(child: Text('Decrement: $_counter')),
      ),
    );
  }
}
