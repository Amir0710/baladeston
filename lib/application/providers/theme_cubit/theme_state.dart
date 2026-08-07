import 'package:baladeston/domain/theme/entity/theme_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_state.freezed.dart';

enum ThemeStateError {
  errorWhileInitializingTheme,
  errorWhileLoadingTheme,
  errorWhileSettingTheme,
  errorWhileCreatingTheme,
  errorWhileUpdatingTheme,
  errorWhileDeletingTheme
}

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = _Initil;

  const factory ThemeState.initializingTheme() = _InitializingTheme;

  const factory ThemeState.initializedTheme({required ThemeEntity theme}) =
      _InitializedTheme;

  const factory ThemeState.creatingTheme() = _CreatingTheme;

  const factory ThemeState.createdTheme({required ThemeEntity theme}) =
      _CreatedTheme;

  const factory ThemeState.updatingTheme() = _UpdatingTheme;

  const factory ThemeState.updatedSingleTheme({required ThemeEntity theme}) =
      _UpdatedSingleTheme;

  const factory ThemeState.updatedMultiTheme(
      {required List<ThemeEntity> theme}) = _UpdatedMultiTheme;

  const factory ThemeState.deletingTheme() = _DeletingTheme;

  const factory ThemeState.deletedSingleTheme({required int theme}) =
      _DeletedSingleTheme;

  const factory ThemeState.deletedMultiTheme({required List<int> theme}) =
      _DeletedMultiTheme;

  const factory ThemeState.settingTheme() = _SettingTheme;

  const factory ThemeState.setTheme() = _SetTheme;

  const factory ThemeState.fetchedMultiTheme({
    required List<ThemeEntity> theme,
    required int count,
  }) = _FetchedMultiTheme;

  const factory ThemeState.fetchedSingleTheme({
    required ThemeEntity theme,
  }) = _FetchedSingleTheme;

  const factory ThemeState.fetchingMultiTheme() = _FetchingMultiTheme;

  const factory ThemeState.fetchingSingleTheme() = _FetchingSingleTheme;

  const factory ThemeState.error({
    required ThemeStateError error,
    required String message,
  }) = _Error;
}
