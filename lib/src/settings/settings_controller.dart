import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'settings_service.dart';

final themeModeProvider =
    StateNotifierProvider<ThemeModeController, AsyncValue<ThemeMode>>(
  (ref) => ThemeModeController._(ref.read),
);

class ThemeModeController extends StateNotifier<AsyncValue<ThemeMode>> {
  ThemeModeController._(this._read) : super(const AsyncValue.loading()) {
    Future(() async {
      state = await AsyncValue.guard(() => _settingsService.themeMode);
    });
  }

  final Reader _read;
  SettingsService get _settingsService => _read(settingsService);

  Future<void> updateThemeMode(ThemeMode themeMode) async {
    if (themeMode == state.value) {
      return;
    }
    state = AsyncValue.data(themeMode);
    await _settingsService.updateThemeMode(themeMode);
  }
}
