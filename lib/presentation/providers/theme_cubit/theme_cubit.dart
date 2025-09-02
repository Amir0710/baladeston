import 'package:baladeston/core/theme/app_themes.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(ThemeState.success(
          themeData: nullThemeData,
          isDark: true,
        )) {
    emit(ThemeState.success(
      themeData: AppTheme.lightTheme(),
      isDark: true,
    ));
  }

  void toggleTheme() {
    state.maybeWhen(
      success: (themeData, isDark) {
        emit(ThemeState.success(
          themeData: isDark ? AppTheme.lightTheme() : AppTheme.darkTheme(),
          isDark: !isDark,
        ));
      },
      orElse: () {},
    );
  }
}

final nullThemeData = ThemeData();
