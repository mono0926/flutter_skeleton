import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeleton/src/router.dart';

import '../settings/settings_view.dart';
import 'sample_item.dart';

class SampleItemListView extends ConsumerWidget {
  const SampleItemListView({
    Key? key,
    this.items = const [
      SampleItem(1),
      SampleItem(2),
      SampleItem(3),
    ],
  }) : super(key: key);

  static const routeName = '/';

  final List<SampleItem> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Items'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => router.push(SettingsView.routeName),
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final id = item.id;

          return ListTile(
            title: Text('SampleItem $id'),
            leading: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () {
              router.go('/items/$id');
            },
          );
        },
      ),
    );
  }
}
