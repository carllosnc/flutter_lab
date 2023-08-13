part of 'counter.dart';

extension RenderExtension on CounterState {
  Widget render() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        incrementButton(),
        const SizedBox(height: 20),
        decrementButton(),
      ],
    );
  }
}
