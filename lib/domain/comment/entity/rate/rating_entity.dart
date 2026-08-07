import 'package:baladeston/core/enum/comment/comment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_entity.freezed.dart';

@freezed
abstract class RatingEntity with _$RatingEntity {
  const factory RatingEntity({
    required CommentType targetType,
    required int targetId,
    required double averageRating,
    required int totalCount,
  }) = _RatingEntity;
}
