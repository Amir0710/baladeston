// class Favorite {
// final int userId;
// final int targetId;
// final DateTime interestedIn;

//   const Favorite({
//     required this.userId,
//     required this.targetId,
//     required this.interestedIn,
//   });
// }
// domain/entities/favorite_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_entity.freezed.dart';

@freezed
abstract class FavoriteEntity with _$FavoriteEntity {
  const factory FavoriteEntity({
    required int userId,
    required String type ,
    required int targetId,
    required DateTime interestedIn,
  }) = _FavoriteEntity;
}
