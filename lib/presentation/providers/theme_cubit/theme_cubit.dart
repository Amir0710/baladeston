import 'package:baladeston/core/theme/app_themes.dart';
import 'package:baladeston/domain/repositories/theme_repository.dart' show ThemeRepository;
import 'package:baladeston/presentation/providers/theme_cubit/theme_state.dart';
import 'package:bloc/bloc.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final ThemeRepository _repository;
  ThemeCubit({required ThemeRepository repository})
      : _repository = repository,
        super(const ThemeState.initial()) {
    _initTheme();
  }

  Future<void>_initTheme() async {
    emit(const ThemeState.loading());
    try {
      final themeEntity = await _repository.initTheme();

      emit(ThemeState.success(
        themeData: () {
          AppTheme.init(themeEntity!);
          return AppTheme.theme();
        }(),
        isDark: themeEntity!.isDark,
      ));

    } catch (e) {
      emit(ThemeState.failure(message: e.toString()));
    }
  }

  Future<void> loadThemeFromSupabase() async {
    emit(const ThemeState.loading());


  }

  Future<void> toggleTheme() async {
    state.maybeWhen(
      success: (themeData, isDark) async {
        final newIsDark = !isDark;
      },
      orElse: () {},
    );
  }
}
