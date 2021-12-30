import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeleton/src/settings/settings_controller.dart';

import 'src/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  final settingsController = container.read(themeModeProvider.notifier);
  await container.read(themeModeProvider.future);
  runApp(
    ProviderScope(
      overrides: [
        themeModeProvider.overrideWithValue(settingsController),
      ],
      child: const App(),
    ),
  );
}
