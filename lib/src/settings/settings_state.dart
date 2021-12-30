import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState({
    ThemeMode? themeMode,
  }) = _SettingState;
}
