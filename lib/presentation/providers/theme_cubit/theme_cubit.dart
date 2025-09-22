import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/presentation/providers/theme_cubit/theme_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'theme_state.dart';

// مثال UseCaseها — باید از لایه Domain بیاری
import 'package:baladeston/domain/usecase/theme/get_theme_by_name_usecase.dart';
import 'package:baladeston/domain/usecase/theme/get_theme_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/theme/get_all_themes_usecase.dart';
import 'package:baladeston/domain/usecase/theme/create_theme_usecase.dart';
import 'package:baladeston/domain/usecase/theme/update_theme_usecase.dart';
import 'package:baladeston/domain/usecase/theme/delete_theme_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/theme/delete_theme_by_name_usecase.dart';
import 'package:baladeston/domain/usecase/theme/count_all_themes_usecase.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final CountAllThemesUseCase _countUseCase;
  final GetAllThemesUseCase _getAllUseCase;
  final GetThemeByNameUseCase _getByNameUseCase;
  final GetThemeByIdUseCase _getByIdUseCase;
  final CreateThemeUseCase _createUseCase;
  final UpdateThemeUseCase _updateUseCase;
  final DeleteThemeByIdUseCase _deleteByIdUseCase;
  final DeleteThemeByNameUseCase _deleteByNameUseCase;

  ThemeCubit({
    required CountAllThemesUseCase countUseCase,
    required GetAllThemesUseCase getAllUseCase,
    required GetThemeByNameUseCase getByNameUseCase,
    required GetThemeByIdUseCase getByIdUseCase,
    required CreateThemeUseCase createUseCase,
    required UpdateThemeUseCase updateUseCase,
    required DeleteThemeByIdUseCase deleteByIdUseCase,
    required DeleteThemeByNameUseCase deleteByNameUseCase, required themeLocal,
  })  : _countUseCase = countUseCase,
        _getAllUseCase = getAllUseCase,
        _getByNameUseCase = getByNameUseCase,
        _getByIdUseCase = getByIdUseCase,
        _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByNameUseCase = deleteByNameUseCase,
        super(const ThemeState.initial());

  Future<void> loadThemeFromSupabase() async {
    emit(const ThemeState.loading());

    try {
      final theme = await _getByNameUseCase(name : 'dark');
      if (theme == null) {

        emit(ThemeState.success(
          themeData: AppTheme.lightTheme(),
          isDark: false,
        ));
        return;
      }

      final isDark = theme.name.toLowerCase() == 'dark';

      emit(ThemeState.success(
        themeData: isDark ? AppTheme.darkTheme() : AppTheme.lightTheme(),
        isDark: isDark,
      ));
    } catch (e) {
      emit(ThemeState.failure(message: e.toString()));
    }
  }

  Future<void> toggleTheme() async {
    state.maybeWhen(
      success: (themeData, isDark) async {
        final newIsDark = !isDark;

        emit(ThemeState.success(
          themeData: newIsDark ? AppTheme.darkTheme() : AppTheme.lightTheme(),
          isDark: newIsDark,
        ));

      },
      orElse: () {},
    );
  }
}
