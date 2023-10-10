import 'package:flutter/material.dart';
import './counter_state.dart';

mixin CounterMixin<T extends StatefulWidget> on State<T> {
  @override
  void initState() {
    super.initState();
    counter.addListener(action);
  }

  @override
  void dispose() {
    super.dispose();
    counter.removeListener(action);
  }

  action() {
    setState(() {});
  }
}
