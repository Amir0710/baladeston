import 'package:baladeston/data/theme/filter/theme_query_filter.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
// UseCases
import 'package:baladeston/domain/theme/usecase/count_theme/count_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/create_theme/create_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/delete_theme_by_filter/delete_theme_by_filter_usecase.dart';
import 'package:baladeston/domain/theme/usecase/delete_theme_by_id/delete_theme_by_id_usecase.dart';
import 'package:baladeston/domain/theme/usecase/get_all_theme/get_all_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/get_theme_by_id/get_theme_by_id_usecase.dart';
import 'package:baladeston/domain/theme/usecase/get_theme_by_name/get_theme_by_name_usecase.dart';
import 'package:baladeston/domain/theme/usecase/init_theme/init_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/set_theme/set_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/update_theme_by_filter/update_theme_by_filter_usecase.dart';
import 'package:baladeston/domain/theme/usecase/update_theme_by_id/update_theme_by_id_usecase.dart';
import 'package:bloc/bloc.dart';

import 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final GetAllThemeUseCase _getAllUseCase;
  final GetThemeByIdUseCase _getByIdUseCase;
  final GetThemeByNameUseCase _getByNameUseCase;
  final CreateThemeUseCase _createUseCase;
  final UpdateThemeByIdUseCase _updateByIdUseCase;
  final UpdateThemeByFilterUseCase _updateByFilterUseCase;
  final DeleteThemeByIdUseCase _deleteByIdUseCase;
  final DeleteThemeByFilterUseCase _deleteByFilterUseCase;
  final CountThemeUseCase _countUseCase;
  final InitThemeUseCase _initUseCase;
  final SetThemeUseCase _setThemeUseCase;

  ThemeCubit({
    required GetAllThemeUseCase getAllUseCase,
    required GetThemeByIdUseCase getByIdUseCase,
    required GetThemeByNameUseCase getByNameUseCase,
    required CreateThemeUseCase createUseCase,
    required UpdateThemeByIdUseCase updateByIdUseCase,
    required UpdateThemeByFilterUseCase updateByFilterUseCase,
    required DeleteThemeByIdUseCase deleteByIdUseCase,
    required DeleteThemeByFilterUseCase deleteByFilterUseCase,
    required CountThemeUseCase countUseCase,
    required InitThemeUseCase initUseCase,
    required SetThemeUseCase setThemeUseCase,
  })  : _getAllUseCase = getAllUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getByNameUseCase = getByNameUseCase,
        _createUseCase = createUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _countUseCase = countUseCase,
        _initUseCase = initUseCase,
        _setThemeUseCase = setThemeUseCase,
        super(const ThemeState.initial());

  /* -------------------------------------------------------------------------- */
  /*                                   List                                     */
  /* -------------------------------------------------------------------------- */

  Future<void> loadThemes({required ThemeQueryFilter filter}) async {
    emit(const ThemeState.fetchingMultiTheme());

    final listResult = await _getAllUseCase(filter: filter);

    listResult.when(
      success: (themes) async {
        int count = themes.length;

        final countResult = await _countUseCase(filter: filter);
        countResult.when(
          success: (value) => count = value,
          failure: (_) {},
        );

        emit(
          ThemeState.fetchedMultiTheme(
            theme: themes,
            count: count,
          ),
        );
      },
      failure: (_) => emit(
        const ThemeState.error(
          error: ThemeStateError.errorWhileLoadingTheme,
          message: 'خطا در دریافت لیست تم‌ها',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Single                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> loadThemeById({required int id}) async {
    emit(const ThemeState.fetchingSingleTheme());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (theme) => emit(ThemeState.fetchedSingleTheme(theme: theme)),
      failure: (_) => emit(
        const ThemeState.error(
          error: ThemeStateError.errorWhileLoadingTheme,
          message: 'خطا در دریافت تم',
        ),
      ),
    );
  }

  Future<void> loadThemeByName({required String name}) async {
    final listResult = await _getByNameUseCase(name: name);

    listResult.when(
      success: (themes) async {
        int count = themes.length;

        final countResult = await _countUseCase(
          filter: ThemeQueryFilter(searchTerm: name),
        );
        countResult.when(
          success: (value) => count = value,
          failure: (_) {},
        );

        emit(
          ThemeState.fetchedMultiTheme(
            theme: themes,
            count: count,
          ),
        );
      },
      failure: (_) => emit(
        const ThemeState.error(
          error: ThemeStateError.errorWhileLoadingTheme,
          message: 'خطا در دریافت لیست تم‌ها',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Create                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> createTheme({
    required ThemeEntity theme,
    required ThemeQueryFilter refreshFilter,
  }) async {
    emit(const ThemeState.creatingTheme());

    final result = await _createUseCase(theme: theme);

    result.when(
      success: (theme) => emit(ThemeState.createdTheme(theme: theme)),
      failure: (_) => emit(
        const ThemeState.error(
          error: ThemeStateError.errorWhileCreatingTheme,
          message: 'خطا در ایجاد تم',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Update                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> updateThemeById({
    required int id,
    required ThemeEntity theme,
  }) async {
    emit(const ThemeState.updatingTheme());

    final result = await _updateByIdUseCase(id: id, theme: theme);

    result.when(
      success: (theme) => emit(ThemeState.updatedSingleTheme(theme: theme)),
      failure: (_) => emit(
        const ThemeState.error(
          error: ThemeStateError.errorWhileUpdatingTheme,
          message: 'خطا در ویرایش تم',
        ),
      ),
    );
  }

  Future<void> updateThemeByFilter({
    required ThemeQueryFilter filter,
    required ThemeEntity theme,
  }) async {
    emit(const ThemeState.updatingTheme());

    final result = await _updateByFilterUseCase(filter: filter, theme: theme);

    result.when(
      success: (theme) => emit(ThemeState.updatedMultiTheme(theme: theme)),
      failure: (_) => emit(
        const ThemeState.error(
          error: ThemeStateError.errorWhileUpdatingTheme,
          message: 'خطا در ویرایش گروهی تم‌ها',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                  Delete                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> deleteThemeById({
    required int id,
  }) async {
    emit(const ThemeState.deletingTheme());

    final result = await _deleteByIdUseCase(id: id);

    result.when(
      success: (theme) => emit(ThemeState.deletedSingleTheme(theme: theme)),
      failure: (_) => emit(
        const ThemeState.error(
          error: ThemeStateError.errorWhileLoadingTheme,
          message: 'خطا در حذف تم',
        ),
      ),
    );
  }

  Future<void> deleteThemeByFilter({required ThemeQueryFilter filter}) async {
    emit(const ThemeState.deletingTheme());

    final result = await _deleteByFilterUseCase(filter: filter);

    result.when(
      success: (theme) => emit(ThemeState.deletedMultiTheme(theme: theme)),
      failure: (_) => emit(
        const ThemeState.error(
          error: ThemeStateError.errorWhileDeletingTheme,
          message: 'خطا در حذف تم بر اساس نام',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                             Init / Set Theme                                */
  /* -------------------------------------------------------------------------- */

  Future<void> initTheme() async {
    emit(const ThemeState.initializingTheme());

    final result = await _initUseCase();

    result.when(
      success: (theme) => emit(ThemeState.initializedTheme(theme: theme)),
      failure: (_) => emit(
        ThemeState.error(
          error: ThemeStateError.errorWhileInitializingTheme,
          message: 'خطا در مقداردهی اولیه تم',
        ),
      ),
    );
  }

  Future<void> setTheme({
    required int id,
    required ThemeQueryFilter refreshFilter,
  }) async {
    emit(const ThemeState.settingTheme());

    final result = await _setThemeUseCase(id: id);

    result.when(
      success: (_) => loadThemes(filter: refreshFilter),
      failure: (_) => emit(
        const ThemeState.error(
          error: ThemeStateError.errorWhileSettingTheme,
          message: 'خطا در تنظیم تم فعال',
        ),
      ),
    );
  }
}
