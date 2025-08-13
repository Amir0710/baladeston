import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.loading() = _Loading;
  const factory FavoriteState.success({
    required List<FavoriteEntity> favorites,
    required int count,
  }) = _Success;
  const factory FavoriteState.failure({
    required String message,
  }) = _Failure;
}
