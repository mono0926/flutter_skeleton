import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeleton/src/settings/settings_state.dart';

import 'settings_service.dart';

final settingsState = StateNotifierProvider<SettingsController, SettingState>(
  (ref) => SettingsController._(ref.read),
);

class SettingsController extends StateNotifier<SettingState> {
  SettingsController._(this._read) : super(const SettingState()) {
    Future(() async {
      state = state.copyWith(
        themeMode: await _settingsService.themeMode,
      );
    });
  }

  final Reader _read;
  SettingsService get _settingsService => _read(settingsService);

  Future<void> updateThemeMode(ThemeMode themeMode) async {
    if (themeMode == state.themeMode) {
      return;
    }
    state = state.copyWith(
      themeMode: themeMode,
    );
    await _settingsService.updateThemeMode(themeMode);
  }
}
