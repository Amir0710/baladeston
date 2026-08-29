
import 'package:baladeston/core/enum/favorite/favorite_type.dart';
import 'package:baladeston/core/enum/favorite/target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_entity.freezed.dart';

@freezed
abstract class FavoriteEntity with _$FavoriteEntity {
  const factory FavoriteEntity({
    int? id,
    int? ownerId,
    required int targetId,
    DateTime? interestedIn,
    required FavoriteType favoriteType,
    required TargetType targetType,
  }) = _FavoriteEntity;
}
