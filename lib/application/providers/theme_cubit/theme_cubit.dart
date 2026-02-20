import 'package:baladeston/domain/theme/usecase/count_all_themes_usecase.dart';
import 'package:baladeston/domain/theme/usecase/get_all_themes_usecase.dart';
import 'package:bloc/bloc.dart';
import 'theme_state.dart';
import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:baladeston/data/theme/filter/theme_query_filter.dart';

import 'package:baladeston/domain/theme/usecase/get_theme_by_id_usecase.dart';
import 'package:baladeston/domain/theme/usecase/get_theme_by_name_usecase.dart';
import 'package:baladeston/domain/theme/usecase/create_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/update_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/delete_theme_by_id_usecase.dart';
import 'package:baladeston/domain/theme/usecase/delete_theme_by_name_usecase.dart';
import 'package:baladeston/domain/theme/usecase/init_theme_usecase.dart';
import 'package:baladeston/domain/theme/usecase/set_theme_usecase.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final GetAllThemeUseCase _getAllUseCase;
  final GetThemeByIdUseCase _getByIdUseCase;
  final GetThemeByNameUseCase _getByNameUseCase;
  final CreateThemeUseCase _createUseCase;
  final UpdateThemeUseCase _updateUseCase;
  final DeleteThemeByIdUseCase _deleteByIdUseCase;
  final DeleteThemeByNameUseCase _deleteByNameUseCase;
  final CountAllThemeUseCase _countUseCase;
  final InitThemeUseCase _initUseCase;
  final SetThemeUseCase _setThemeUseCase;

  ThemeCubit({
    required GetAllThemeUseCase getAllUseCase,
    required GetThemeByIdUseCase getByIdUseCase,
    required GetThemeByNameUseCase getByNameUseCase,
    required CreateThemeUseCase createUseCase,
    required UpdateThemeUseCase updateUseCase,
    required DeleteThemeByIdUseCase deleteByIdUseCase,
    required DeleteThemeByNameUseCase deleteByNameUseCase,
    required CountAllThemeUseCase countUseCase,
    required InitThemeUseCase initUseCase,
    required SetThemeUseCase setThemeUseCase,
  })
      : _getAllUseCase = getAllUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getByNameUseCase = getByNameUseCase,
        _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByNameUseCase = deleteByNameUseCase,
        _countUseCase = countUseCase,
        _initUseCase = initUseCase,
        _setThemeUseCase = setThemeUseCase,
        super( ThemeState.initial());

  // --------------------------------------------------------------------
  // لود لیست تم‌ها با فیلتر
  // --------------------------------------------------------------------
  Future<void> loadThemes({required ThemeQueryFilter filter}) async {
    emit( ThemeState.fetchingList());

    final listResult = await _getAllUseCase(filter: filter);

    await listResult.when(
      success: (themes) async {
        final countResult = await _countUseCase(filter: filter);
        final count = countResult.when(
          success: (value) => value,
          failure: (_) => themes.length,
        );
        emit(ThemeState.successListLoaded(theme: themes, count: count));
      },
      failure: (_) {
        emit(ThemeState.error(
          error: ThemeStateError.errorWhileLoadingThemes,
          message: 'خطا در دریافت لیست تم‌ها',
        ));
      },
    );
  }

  // --------------------------------------------------------------------
  // لود یک تم خاص با شناسه
  // --------------------------------------------------------------------
  Future<void> loadThemeById({required int id}) async {
    emit( ThemeState.fetchingSingle());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (theme) {
        emit(ThemeState.successSingleLoaded(theme: theme));
      },
      failure: (_) {
        emit( ThemeState.error(
          error: ThemeStateError.errorWhileLoadingSingle,
          message: 'خطا در دریافت تم',
        ));
      },
    );
  }

  // --------------------------------------------------------------------
  // لود یک تم خاص با نام
  // --------------------------------------------------------------------
  Future<void> loadThemeByName({required String name}) async {
    emit( ThemeState.fetchingSingle());

    final result = await _getByNameUseCase(name: name);

    result.when(
      success: (theme) {
        emit(ThemeState.successSingleLoaded(theme: theme));
      },
      failure: (_) {
        emit( ThemeState.error(
          error: ThemeStateError.errorWhileLoadingSingle,
          message: 'خطا در دریافت تم بر اساس نام',
        ));
      },
    );
  }

  // --------------------------------------------------------------------
  // ایجاد تم جدید و رفرش لیست
  // --------------------------------------------------------------------
  Future<void> createTheme({
    required ThemeEntity theme,
    required ThemeQueryFilter refreshFilter,
  }) async {
    emit( ThemeState.creating());

    final result = await _createUseCase(theme: theme);

    bool shouldRefresh = false;

    result.when(
      success: (_) => shouldRefresh = true,
      emit(ThemeState.created()),
      failure: (_) {
        emit( ThemeState.error(
          error: ThemeStateError.errorWhileCreating,
          message: 'خطا در ایجاد تم',
        ));
      },
    );

    if (shouldRefresh) await loadThemes(filter: refreshFilter);
  }

  // --------------------------------------------------------------------
  // ویرایش تم و رفرش لیست
  // --------------------------------------------------------------------
  Future<void> updateTheme({
    required ThemeEntity theme,
    required ThemeQueryFilter refreshFilter,
  }) async {
    emit( ThemeState.editing());

    final result = await _updateUseCase(theme: theme);

    bool shouldRefresh = false;

    result.when(
      success: (_) => shouldRefresh = true,
      failure: (_) {
        emit( ThemeState.error(
          error: ThemeStateError.errorWhileEditing,
          message: 'خطا در ویرایش تم',
        ));
      },
    );

    if (shouldRefresh) await loadThemes(filter: refreshFilter);
  }

  // --------------------------------------------------------------------
  // حذف تم بر اساس Id و رفرش لیست
  // --------------------------------------------------------------------
  Future<void> deleteThemeById({
    required int id,
    required ThemeQueryFilter refreshFilter,
  }) async {
    emit( ThemeState.deletingById());

    final result = await _deleteByIdUseCase(id: id);
    bool shouldRefresh = false;

    result.when(
      success: (_) => shouldRefresh = true,
      failure: (_) {
        emit( ThemeState.error(
          error: ThemeStateError.errorWhileDeletingById,
          message: 'خطا در حذف تم (شناسه)',
        ));
      },
    );

    if (shouldRefresh) await loadThemes(filter: refreshFilter);
  }

  // --------------------------------------------------------------------
  // حذف تم بر اساس Name و رفرش لیست
  required int

  id

  ,

  required ThemeQueryFilter

  refreshFilter

  ,
}) async {emit
(
 ThemeState.deletingById());

final result = await _deleteByIdUseCase(id: id);
bool shouldRefresh = false;

result.when(
success: (_) => shouldRefresh = true,
failure: (_) {
emit( ThemeState.error(
error: ThemeStateError.errorWhileDeletingById,
message: 'خطا در حذف تم (شناسه)',
));
},
);

if (shouldRefresh) await loadThemes(filter: refreshFilter);
}

// --------------------------------------------------------------------
// حذف تم بر اساس Name و رفرش لیست
// --------------------------------------------------------------------
Future<void> deleteThemeByName({
required String name,
required ThemeQueryFilter refreshFilter,
}) async {
emit( ThemeState.deletingByFilter());

final result = await _deleteByNameUseCase(name: name);
bool shouldRefresh = false;

result.when(
success: (_) => shouldRefresh = true,
failure: (_) {
emit( ThemeState.error(
error: ThemeStateError.errorWhileDeletingByFilter,
message: 'خطا در حذف تم‌ها بر اساس نام',
));
},
);

if (shouldRefresh) await loadThemes(filter: refreshFilter);
}

// --------------------------------------------------------------------
// --------------------------------------------------------------------
Future<void> deleteThemeByName({
required String name,
required ThemeQueryFilter refreshFilter,
}) async {
emit( ThemeState.deletingByFilter());

final result = await _deleteByNameUseCase(name: name);
bool shouldRefresh = false;

result.when(
success: (_) => shouldRefresh = true,
failure: (_) {
emit( ThemeState.error(
error: ThemeStateError.errorWhileDeletingByFilter,
message: 'خطا در حذف تم‌ها بر اساس نام',
));
},
);

if (shouldRefresh) await loadThemes(filter: refreshFilter);
}

// --------------------------------------------------------------------
// شمارش کل تم‌ها
// --------------------------------------------------------------------
Future<void> countAllThemes({required ThemeQueryFilter filter}) async {
emit( ThemeState.fetchingList());

final result = await _countUseCase(filter: filter);

result.when(
success: (count) {
emit(ThemeState.successCountLoaded(count: count));
},
failure: (_) {
emit( ThemeState.error(
error: ThemeStateError.errorWhileCounting,
message: 'خطا در شمارش تم‌ها',
));
},
);
}

// --------------------------------------------------------------------
// Init Theme (اولین تم یا تم پیش‌فرض)
// --------------------------------------------------------------------
Future<void> initTheme() async {
emit( ThemeState.fetchingSingle());

final result = await _initUseCase();

result.when(
success: (theme) {
emit(ThemeState.successSingleLoaded(theme: theme));
},
failure: (_) {
emit( ThemeState.error(
error: ThemeStateError.errorWhileLoadingSingle,
message: 'خطا در بارگذاری تم اولیه',
));
},
);
}

// --------------------------------------------------------------------
// Set Theme (اعمال تم فعال)
// --------------------------------------------------------------------
Future<void> setTheme({
required int id,
required ThemeQueryFilter refreshFilter,
}) async {
emit( ThemeState.editing());

final result = await _setThemeUseCase(id: id);
bool shouldRefresh = false;

result.when(
success: (_) => shouldRefresh = true,
failure: (_) {
emit( ThemeState.error(
error: ThemeStateError.errorWhileEditing,
message: 'خطا در تغییر تم فعال',
));
},
);

if (shouldRefresh) await loadThemes(filter: refreshFilter);
}
}
