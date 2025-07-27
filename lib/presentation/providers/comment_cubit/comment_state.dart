
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/comment/comment_entity.dart';

part 'comment_state.freezed.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;
  const factory CommentState.loading() = _Loading;
  const factory CommentState.success({
    required List<CommentEntity> comments,
    required int count,
  }) = _Success;
  const factory CommentState.failure({
    required String message,
  }) = _Failure;
}
