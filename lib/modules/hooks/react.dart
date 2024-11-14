import 'package:flutter/material.dart';

class UseState extends ValueNotifier {
  UseState(super.value);

  useEffect(Function() callback) {
    addListener(callback);
  }

  setState(Function(dynamic value) callback) {
    value = callback(value);
    super.value = value;
  }
}

class Render extends ValueListenableBuilder {
  const Render({super.key, required super.valueListenable, required super.builder});
}
