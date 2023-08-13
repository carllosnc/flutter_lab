part of 'counter.dart';

extension DescrementExtension on CounterState {
  Widget incrementButton() {
    return ElevatedButton(
      onPressed: increment,
      child: SizedBox(
        width: 120,
        child: Center(
          child: Text('Increment: $_counter'),
        ),
      ),
    );
  }
}
