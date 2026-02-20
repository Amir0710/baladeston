import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

enum ThemeStateError {
  errorWhileInitializing,
  errorWhileLoadingThemes,
  errorWhileSettingTheme,
  errorWhileLoadingSingle, errorWhileCreating
}

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initial;

  const factory ThemeState.creating() = _Creating;
  const factory ThemeState.created() = _Created;

  const factory ThemeState.fetchingList() = _FetchingList;

  const factory ThemeState.fetchingSingle() = _FetchingSingle;

  const factory ThemeState.initializing() = _Initializing;

  const factory ThemeState.initialized() = _Initialized;

  const factory ThemeState.loadingAllThemes() = _LoadingAllThemes;

  const factory ThemeState.settingTheme() = _SettingTheme;

  const factory ThemeState.successListLoaded({
    required List<ThemeEntity> theme,
    required int count,
  }) = _SuccessListLoaded;

  const factory ThemeState.successSingleLoaded({
    required ThemeEntity theme,
  }) = _Success;

  const factory ThemeState.error({
    required ThemeStateError error,
    required String message,
  }) = _Error;
}
