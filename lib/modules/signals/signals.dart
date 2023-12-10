import 'package:signals/signals_flutter.dart';

final counter = signal(0);
final fontSize = signal(14.0);

final firstValue = signal(0);
final secondValue = signal(0);

final sum = computed(() => firstValue.value + secondValue.value);
