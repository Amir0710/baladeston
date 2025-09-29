
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_entity.freezed.dart';

@freezed
abstract class FavoriteEntity with _$FavoriteEntity {
  const factory FavoriteEntity({
     int? id,
     required int userId,
     required int targetId,
      DateTime? interestedIn,
  }) = _FavoriteEntity;
}
