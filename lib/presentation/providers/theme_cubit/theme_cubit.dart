import 'package:baladeston/core/theme/app_themes.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'theme_state.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.initial()) {
    loadThemeFromSupabase();
  }

  Future<void> loadThemeFromSupabase() async {
    emit(const ThemeState.loading());

    try {
      final client = Supabase.instance.client;

      final response =
          await client.from('theme').select().limit(1).maybeSingle();

      if (response == null) {
        emit(ThemeState.success(
          themeData: AppTheme.lightTheme(),
          isDark: false,
        ));
        return;
      }

      final isDark = response['name']?.toString().toLowerCase() == 'dark';

      emit(ThemeState.success(
        themeData: isDark ? AppTheme.darkTheme() : AppTheme.lightTheme(),
        isDark: isDark,
      ));
    } catch (e) {
      emit(ThemeState.failure(message: e.toString()));
    }
  }

  void toggleTheme() {
    state.maybeWhen(
      success: (themeData, isDark) async {
        final newIsDark = !isDark;

        emit(ThemeState.success(
          themeData: newIsDark ? AppTheme.darkTheme() : AppTheme.lightTheme(),
          isDark: newIsDark,
        ));

        try {
          await Supabase.instance.client.from('theme').upsert({
            'id': 1,
            'name': newIsDark ? 'dark' : 'light',
            'colors': {},
          });
        } catch (_) {}
      },
      orElse: () {},
    );
  }
}
