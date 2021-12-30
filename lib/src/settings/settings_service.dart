import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final settingsService = Provider((ref) => SettingsService._());

class SettingsService {
  SettingsService._();
  static const _themeKey = 'themeKey';

  Future<ThemeMode> get themeMode async {
    final sp = await SharedPreferences.getInstance();
    final themeString = sp.getString(_themeKey);
    return themeString == null
        ? ThemeMode.system
        : ThemeMode.values.byName(themeString);
  }

  Future<void> updateThemeMode(ThemeMode theme) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(_themeKey, theme.name);
  }
}
