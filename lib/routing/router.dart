import '/modules/extended_component/extended_component_page.dart';
import '/modules/stateful_builder/stateful_builder.page.dart';
import '/modules/value_notifier/value_notifier_page.dart';
import '/modules/stream/stream_page.dart';
import '/modules/mixed_component/mixed_page.dart';
import '/modules/http_request/http_request_page.dart';
import '/modules/change_notifier/change_notifier_page.dart';
import '/modules/inherited_widgets/inherited_widgets_page.dart';
import '/modules/responsive/responsive_page.dart';
import '/modules/dynamic_widgets/dynamic_widgets_page.dart';

import '/home.page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomePage(),
    routes: [
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
      GoRoute(
        path: 'change_notifier',
        name: 'chnage notifier',
        builder: (context, state) => const ChangeNotifierPage(),
      ),
      GoRoute(
        path: 'inherited_widgets',
        name: 'inherited widgets',
        builder: (context, state) => const InheritedWidgetsPage(),
      ),
      GoRoute(
        path: 'responsive',
        name: 'responsive',
        builder: (context, state) => const ResponsivePage(),
      ),
      GoRoute(
        path: 'dynamic_widgets',
        name: 'dynamic widgets',
        builder: (context, state) => const DynamicWidgetPage(),
      ),
    ],
  )
]);
