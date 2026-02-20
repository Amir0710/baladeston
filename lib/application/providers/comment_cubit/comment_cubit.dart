import 'package:baladeston/domain/comment/usecase/update_comment_by_filter/update_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/comment/usecase/update_comment_by_id/update_comment_by_id_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:baladeston/application/providers/comment_cubit/comment_state.dart';
import 'package:baladeston/data/comment/filter/comment_query_filter.dart';
import 'package:baladeston/domain/comment/entity/comment_entity.dart';
import 'package:baladeston/domain/comment/usecase/count_comment/count_comment_usecase.dart';
import 'package:baladeston/domain/comment/usecase/create_comment/create_comment_usecase.dart';
import 'package:baladeston/domain/comment/usecase/delete_comment_by_filter/delete_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/comment/usecase/delete_comment_by_id/delete_comment_by_id_usecase.dart';
import 'package:baladeston/domain/comment/usecase/get_comment_by_filter/get_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/comment/usecase/get_comment_by_id/get_comment_by_id_usecase.dart';

class CommentCubit extends Cubit<CommentState> {
  final CreateCommentUseCase _createCommentUseCase;
  final UpdateCommentByIdUseCase _updateCommentByIdUseCase;
  final UpdateCommentByFilterUseCase _updateCommentByFilterUseCase;
  final CountCommentUseCase _countCommentUseCase;
  final DeleteCommentByIdUseCase _deleteCommentByIdUseCase;
  final DeleteCommentByFilterUseCase _deleteCommentByFilterUseCase;
  final GetCommentByFilterUseCase _getCommentByFilterUseCase;
  final GetCommentByIdUseCase _getCommentByIdUseCase;

  CommentCubit({
    required CreateCommentUseCase createUseCase,
    required UpdateCommentByIdUseCase updateByIdUseCase,
    required UpdateCommentByFilterUseCase updateByFilterUseCase,
    required CountCommentUseCase countUseCase,
    required DeleteCommentByIdUseCase deleteByIdUseCase,
    required DeleteCommentByFilterUseCase deleteByFilterUseCase,
    required GetCommentByFilterUseCase getByFilterUseCase,
    required GetCommentByIdUseCase getByIdUseCase ,
  })  : _createCommentUseCase = createUseCase,
        _updateCommentByIdUseCase = updateByIdUseCase,
        _updateCommentByFilterUseCase = updateByFilterUseCase,
        _countCommentUseCase = countUseCase,
        _deleteCommentByIdUseCase = deleteByIdUseCase,
        _deleteCommentByFilterUseCase = deleteByFilterUseCase,
        _getCommentByFilterUseCase = getByFilterUseCase,
        _getCommentByIdUseCase = getByIdUseCase,
        super(const CommentState.initial());

  /* -------------------------------------------------------------------------- */
  /*                                    READ                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> getCommentsByFilter({
    required CommentQueryFilter filter,
  }) async {
    emit(const CommentState.fetchingAllComment());
    try {
      final comments = await _getCommentByFilterUseCase(filter: filter);
      final count = await _countCommentUseCase(filter: filter);

      emit(
        CommentState.successListLoaded(
          comments: comments,
          count: count,
        ),
      );
    } catch (e) {
      emit(
        CommentState.error(
          error: CommentStateError.errorWhileGettingAllComment,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> getCommentById({required int id}) async {
    emit(const CommentState.fetchingComment());
    try {
      final comment = await _getCommentByIdUseCase(id: id);

      emit(
        CommentState.successSingleLoaded(comment: comment),
      );
    } catch (e) {
      emit(
        CommentState.error(
          error: CommentStateError.commentNotFound,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                                   CREATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> createComment({
    required CommentEntity comment,
  }) async {
    emit(const CommentState.creatingComment());
    try {
      final createdComment =
      await _createCommentUseCase(comment: comment);

      emit(
        CommentState.createdComment(
          comment: createdComment,
        ),
      );
    } catch (e) {
      emit(
        CommentState.error(
          error: CommentStateError.errorWhileAddingComment,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                                   UPDATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> updateCommentById({
    required int id,
    required CommentEntity comment,
  }) async {
    emit(const CommentState.updatingComment());
    try {
      final updatedComment =
      await _updateCommentByIdUseCase(
        id: id,
        comment: comment,
      );

      emit(
        CommentState.updatedSingleComment(
          comment: updatedComment,
        ),
      );
    } catch (e) {
      emit(
        CommentState.error(
          error: CommentStateError.errorWhileUpdatingComment,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> updateCommentByFilter({
    required CommentEntity comment,
    required CommentQueryFilter filter,
  }) async {
    emit(const CommentState.updatingComment());
    try {
      final updatedComments =
      await _updateCommentByFilterUseCase(
        comment: comment,
        filter: filter,
      );

      emit(
        CommentState.updatedListComment(
          comments: updatedComments,
        ),
      );
    } catch (e) {
      emit(
        CommentState.error(
          error: CommentStateError.errorWhileUpdatingComment,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                                   DELETE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> deleteCommentById({required int id}) async {
    emit(const CommentState.deletingComment());
    try {
      final deletedId = await _deleteCommentByIdUseCase(id: id);

      emit(
        CommentState.deletedSingleComment(id: deletedId),
      );
    } catch (e) {
      emit(
        CommentState.error(
          error: CommentStateError.errorWhileDeletingComment,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<void> deleteCommentByFilter({
    required CommentQueryFilter filter,
  }) async {
    emit(const CommentState.deletingComment());
    try {
      final deletedIds =
      await _deleteCommentByFilterUseCase(filter: filter);

      emit(
        CommentState.deletedListComment(ids: deletedIds),
      );
    } catch (e) {
      emit(
        CommentState.error(
          error: CommentStateError.errorWhileDeletingComment,
          errorMessage: e.toString(),
        ),
      );
    }
  }

  /* -------------------------------------------------------------------------- */
  /*                                    COUNT                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> countComments({
    required CommentQueryFilter filter,
  }) async {
    emit(const CommentState.countingComment());
    try {
      final count = await _countCommentUseCase(filter: filter);

      emit(
        CommentState.countedComment(count: count),
      );
    } catch (e) {
      emit(
        CommentState.error(
          error: CommentStateError.errorWhileCountingComment,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
