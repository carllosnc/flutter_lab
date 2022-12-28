import '/modules/stateful_builder/stateful_builder.page.dart';
import '/modules/change_notifier/change_notifier.page.dart';
import '/modules/value_notifier/value_notifier.page.dart';
import '/modules/stream/stream.page.dart';

import '/home.page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
    routes: [
      GoRoute(
        path: 'change_notifier',
        name: 'change notifier',
        builder: (context, state) => const ChangeNotifierPage(),
      ),
      GoRoute(
        path: 'value_notifier',
        name: 'value notifier',
        builder: (context, state) => const ValueNotifierPage(),
      ),
      GoRoute(
        path: 'streams',
        name: 'streams',
        builder: (context, state) => const StreamsPage(),
      ),
      GoRoute(
        path: 'stateful_builder',
        name: 'stateful builder',
        builder: (context, state) => const StatefulBuilderPage(),
      ),
    ],
  )
]);
