import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final settingsService = Provider((ref) => SettingsService._(ref.read));

final sharedPreferencesProvider = Provider<SharedPreferences>(
  (ref) => throw UnimplementedError(),
);

class SettingsService {
  SettingsService._(this._read);
  final Reader _read;
  static const _themeKey = 'themeKey';

  SharedPreferences get _sp => _read(sharedPreferencesProvider);

  ThemeMode get themeMode {
    final themeString = _sp.getString(_themeKey);
    return themeString == null
        ? ThemeMode.system
        : ThemeMode.values.byName(themeString);
  }

  Future<void> updateThemeMode(ThemeMode theme) async {
    await _sp.setString(_themeKey, theme.name);
  }
}
