import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'settings_service.dart';

final themeModeProvider = StateNotifierProvider<ThemeModeController, ThemeMode>(
  (ref) => ThemeModeController._(ref.read),
);

class ThemeModeController extends StateNotifier<ThemeMode> {
  ThemeModeController._(this._read) : super(_read(settingsService).themeMode);

  final Reader _read;
  SettingsService get _settingsService => _read(settingsService);

  Future<void> updateThemeMode(ThemeMode themeMode) async {
    if (themeMode == state) {
      return;
    }
    state = themeMode;
    await _settingsService.updateThemeMode(themeMode);
  }
}
