import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initial;
  const factory ThemeState.loading() = _Loading;

  const factory ThemeState.success({
    required ThemeData themeData,
    required bool isDark,
  }) = _Success;

  const factory ThemeState.failure({
    required String message,
  }) = _Failure;
}
