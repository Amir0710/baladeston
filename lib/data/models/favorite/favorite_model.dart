// data/models/favorite_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_model.freezed.dart';
part 'favorite_model.g.dart';

@freezed
abstract class FavoriteModel with _$FavoriteModel {
  const factory FavoriteModel({
    required int? id , 
    required int userId,
        required String type ,
    required int targetId,
    required DateTime? interestedIn,
  }) = _FavoriteModel;

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
}
