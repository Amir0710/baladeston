import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.loading() = _Loading;
  const factory FavoriteState.success([String? message]) = _Success;
  const factory FavoriteState.error(String message) = _Error;
  const factory FavoriteState.lastPositionsLoaded(List<FavoriteEntity> favorites) = _LastPositionsLoaded;
}
