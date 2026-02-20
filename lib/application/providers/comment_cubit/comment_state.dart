import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';

part 'comment_state.freezed.dart';


enum CommentStateError {
  noCommentFound,
  commentNotFound,
  errorWhileGettingComment,
  errorWhileGettingAllComment,
  errorWhileAddingComment,
  errorWhileUpdatingComment,
  errorWhileDeletingComment,
  errorWhileCountingComment,
}


@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;

  /* -------------------------------------------------------------------------- */
  /*                                   FETCH                                    */
  /* -------------------------------------------------------------------------- */

  // fetching single comment by id
  const factory CommentState.fetchingComment() = _FetchingComment;

  // fetching comment list by filter
  const factory CommentState.fetchingAllComment() = _FetchingAllComment;

  // success: list of comments loaded
  const factory CommentState.successListLoaded({
    required List<CommentEntity> comments,
    required int count,
  }) = _SuccessListLoaded;

  // success: single comment loaded
  const factory CommentState.successSingleLoaded({
    required CommentEntity comment,
  }) = _SuccessSingleLoaded;

  /* -------------------------------------------------------------------------- */
  /*                                   CREATE                                   */
  /* -------------------------------------------------------------------------- */

  const factory CommentState.creatingComment() = _CreatingComment;

  const factory CommentState.createdComment({
    required CommentEntity comment,
  }) = _CreatedComment;

  /* -------------------------------------------------------------------------- */
  /*                                   UPDATE                                   */
  /* -------------------------------------------------------------------------- */

  const factory CommentState.updatingComment() = _UpdatingComment;

  // update by id
  const factory CommentState.updatedSingleComment({
    required CommentEntity comment,
  }) = _UpdatedSingleComment;

  // update by filter
  const factory CommentState.updatedListComment({
    required List<CommentEntity> comments,
  }) = _UpdatedListComment;

  /* -------------------------------------------------------------------------- */
  /*                                   DELETE                                   */
  /* -------------------------------------------------------------------------- */

  const factory CommentState.deletingComment() = _DeletingComment;

  // delete by id
  const factory CommentState.deletedSingleComment({
    required int id,
  }) = _DeletedSingleComment;

  // delete by filter
  const factory CommentState.deletedListComment({
    required List<int> ids,
  }) = _DeletedListComment;

  /* -------------------------------------------------------------------------- */
  /*                                   COUNT                                    */
  /* -------------------------------------------------------------------------- */

  const factory CommentState.countingComment() = _CountingComment;

  const factory CommentState.countedComment({
    required int count,
  }) = _CountedComment;

  /* -------------------------------------------------------------------------- */
  /*                                   ERROR                                    */
  /* -------------------------------------------------------------------------- */

  const factory CommentState.error({
    required CommentStateError error,
    String? errorMessage,
  }) = _Error;
}