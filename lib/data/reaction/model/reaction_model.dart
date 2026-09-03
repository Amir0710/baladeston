import 'package:baladeston/core/enum/reaction/reaction_type.dart';
import 'package:baladeston/core/enum/reaction/target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction_model.freezed.dart';
part 'reaction_model.g.dart';

@freezed
abstract class ReactionModel with _$ReactionModel {
  const factory ReactionModel({
    int? id,
    int? ownerId,
    required int targetId,
    DateTime? interestedIn,
    required ReactionType reactionType,
    required TargetType targetType,
  }) = _ReactionModel;

  factory ReactionModel.fromJson(Map<String, dynamic> json) =>
      _$ReactionModelFromJson(json);
}
