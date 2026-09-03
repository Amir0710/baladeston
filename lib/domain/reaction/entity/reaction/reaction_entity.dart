import 'package:baladeston/core/enum/reaction/reaction_type.dart';
import 'package:baladeston/core/enum/reaction/target_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reaction_entity.freezed.dart';

@freezed
abstract class ReactionEntity with _$ReactionEntity {
  const factory ReactionEntity({
    int? id,
    int? ownerId,
    required int targetId,
    DateTime? interestedIn,
    required ReactionType reactionType,
    required TargetType targetType,
  }) = _ReactionEntity;
}
