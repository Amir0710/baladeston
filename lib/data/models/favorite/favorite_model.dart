import 'package:baladeston/domain/entitys/favorite/favorite.dart';
import 'package:json_annotation/json_annotation.dart';

part 'favorite_model.g.dart';

@JsonSerializable()
class FavoriteModel {
  final int userId;
  final int targetId;
  final DateTime interestedIn;

  const FavoriteModel({
    required this.userId,
    required this.targetId,
    required this.interestedIn,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteModelToJson(this);

  /// تبدیل مدل به entity لایه domain
  Favorite toDomain() => Favorite(
        userId: userId,
        targetId: targetId,
        interestedIn: interestedIn,
      );

  /// ساخت مدل از روی entity لایه domain
  factory FavoriteModel.fromDomain(Favorite favorite) => FavoriteModel(
        userId: favorite.userId,
        targetId: favorite.targetId,
        interestedIn: favorite.interestedIn,
      );
}
