import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'sample_feature/sample_item_details_view.dart';
import 'sample_feature/sample_item_list_view.dart';
import 'settings/settings_view.dart';

const _itemsPath = '/items';

final routerProvider = Provider(
  (ref) => GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        redirect: (_) => _itemsPath,
      ),
      GoRoute(
        path: _itemsPath,
        builder: (context, state) => const SampleItemListView(),
        routes: [
          GoRoute(
            path: ':id',
            builder: (context, state) => SampleItemDetailsView(
              id: state.params['id']!,
            ),
          ),
        ],
      ),
      GoRoute(
        path: SettingsView.routeName,
        builder: (context, state) => const SettingsView(),
      ),
    ],
  ),
);
