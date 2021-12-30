import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  static const _themeKey = 'themeKey';

  Future<ThemeMode> themeMode() async {
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
