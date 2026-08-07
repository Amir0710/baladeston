
import 'package:baladeston/core/enum/favorite/favorite_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_entity.freezed.dart';

@freezed
abstract class FavoriteEntity with _$FavoriteEntity {
  const factory FavoriteEntity({
     int? id,
     required int userId,
     required int targetId,
    required FavoriteType type ,
      DateTime? interestedIn,
  }) = _FavoriteEntity;
}
