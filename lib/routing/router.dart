import '/modules/extended_component/extended_component_page.dart';
import '/modules/stateful_builder/stateful_builder.page.dart';
import '/modules/change_notifier/change_notifier_page.dart';
import '/modules/value_notifier/value_notifier_page.dart';
import '/modules/stream/stream_page.dart';
import '/modules/mixed_component/mixed_page.dart';
import '/modules/http_request/http_request_page.dart';

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
      GoRoute(
        path: 'mixed_component',
        name: 'mixed component',
        builder: (context, state) => const MixedPage(),
      ),
      GoRoute(
        path: 'extended_component',
        name: 'extended component',
        builder: (context, state) => const ExtendedComponentPage(),
      ),
      GoRoute(
        path: 'http_request',
        name: 'http_request',
        builder: (context, state) => const HttpRequestPage(),
      ),
    ],
  )
]);
