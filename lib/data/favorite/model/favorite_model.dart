import 'package:baladeston/core/enum/favorite/favorite_type.dart';
import 'package:baladeston/core/enum/favorite/target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
abstract class FavoriteModel with _$FavoriteModel {
  const factory FavoriteModel({
    int? id,
    int? ownerId,
    required int targetId,
    DateTime? interestedIn,
    required FavoriteType favoriteType,
    required TargetType targetType,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
}
