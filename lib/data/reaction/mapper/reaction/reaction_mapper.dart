import 'package:baladeston/data/reaction/model/reaction_model.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';

extension ReactionModelMapper on ReactionModel {
  ReactionEntity toEntity() {
    return ReactionEntity(
      id: id,
      ownerId: ownerId,
      targetId: targetId,
      interestedIn: interestedIn,
      reactionType: reactionType,
      targetType: targetType,
    );
  }
}

extension ReactionEntityMapper on ReactionEntity {
  ReactionModel toModel() {
    return ReactionModel(
      id: id,
      ownerId: ownerId,
      targetId: targetId,
      interestedIn: interestedIn,
      reactionType: reactionType,
      targetType: targetType,
    );
  }
}
