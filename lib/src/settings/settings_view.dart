import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeleton/src/extension/extension.dart';

import 'settings_controller.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({Key? key}) : super(key: key);

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(settingsState.notifier);
    final themeMode = ref.watch(settingsState.select((s) => s.themeMode));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: DropdownButton<ThemeMode>(
          value: themeMode,
          onChanged: (themeMode) => controller.updateThemeMode(themeMode!),
          items: ThemeMode.values.map((themeMode) {
            return DropdownMenuItem(
              value: themeMode,
              child: Text('${themeMode.name.capitalized} Theme'),
            );
          }).toList(),
        ),
      ),
    );
  }
}
