import 'package:baladeston/application/providers/comment_cubit/comment_state.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/usecase/count_comment/count_comment_usecase.dart';
import 'package:baladeston/domain/comment/usecase/create_comment/create_comment_usecase.dart';
import 'package:baladeston/domain/comment/usecase/delete_comment_by_filter/delete_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/comment/usecase/delete_comment_by_id/delete_comment_by_id_usecase.dart';
import 'package:baladeston/domain/comment/usecase/comment/get_comment_by_filter/get_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/comment/usecase/get_comment_by_id/get_comment_by_id_usecase.dart';
import 'package:baladeston/domain/comment/usecase/comment/update_comment_by_filter/update_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/comment/usecase/update_comment_by_id/update_comment_by_id_usecase.dart';
import 'package:bloc/bloc.dart';

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
    required GetCommentByIdUseCase getByIdUseCase,
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

    final commentsResult = await _getCommentByFilterUseCase(filter: filter);
    final countResult = await _countCommentUseCase(filter: filter);

    commentsResult.when(
      success: (comments) {
        countResult.when(
          success: (count) {
            emit(
              CommentState.successListLoaded(
                comments: comments,
                count: count,
              ),
            );
          },
          failure: (failure) {
            emit(
              CommentState.error(
                error: CommentStateError.errorWhileCountingComment,
                errorMessage: failure.message,
              ),
            );
          },
        );
      },
      failure: (failure) {
        emit(
          CommentState.error(
            error: CommentStateError.errorWhileGettingAllComment,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  Future<void> getCommentById({required int id}) async {
    emit(const CommentState.fetchingComment());

    final result = await _getCommentByIdUseCase(id: id);

    result.when(
      success: (comment) {
        emit(CommentState.successSingleLoaded(comment: comment));
      },
      failure: (failure) {
        emit(
          CommentState.error(
            error: CommentStateError.commentNotFound,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   CREATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> createComment({
    required CommentEntity comment,
  }) async {
    emit(const CommentState.creatingComment());

    final result = await _createCommentUseCase(comment: comment);

    result.when(
      success: (createdComment) {
        emit(
          CommentState.createdComment(
            comment: createdComment,
          ),
        );
      },
      failure: (failure) {
        emit(
          CommentState.error(
            error: CommentStateError.errorWhileAddingComment,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   UPDATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> updateCommentById({
    required int id,
    required CommentEntity comment,
  }) async {
    emit(const CommentState.updatingComment());

    final result = await _updateCommentByIdUseCase(
      id: id,
      comment: comment,
    );

    result.when(
      success: (updatedComment) {
        emit(
          CommentState.updatedSingleComment(
            comment: updatedComment,
          ),
        );
      },
      failure: (failure) {
        emit(
          CommentState.error(
            error: CommentStateError.errorWhileUpdatingComment,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  Future<void> updateCommentByFilter({
    required CommentEntity comment,
    required CommentQueryFilter filter,
  }) async {
    emit(const CommentState.updatingComment());

    final result = await _updateCommentByFilterUseCase(
      comment: comment,
      filter: filter,
    );

    result.when(
      success: (updatedComments) {
        emit(
          CommentState.updatedListComment(
            comments: updatedComments,
          ),
        );
      },
      failure: (failure) {
        emit(
          CommentState.error(
            error: CommentStateError.errorWhileUpdatingComment,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   DELETE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> deleteCommentById({required int id}) async {
    emit(const CommentState.deletingComment());

    final result = await _deleteCommentByIdUseCase(id: id);

    result.when(
      success: (deletedId) {
        emit(CommentState.deletedSingleComment(id: deletedId));
      },
      failure: (failure) {
        emit(
          CommentState.error(
            error: CommentStateError.errorWhileDeletingComment,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  Future<void> deleteCommentByFilter({
    required CommentQueryFilter filter,
  }) async {
    emit(const CommentState.deletingComment());

    final result = await _deleteCommentByFilterUseCase(filter: filter);

    result.when(
      success: (deletedIds) {
        emit(CommentState.deletedListComment(ids: deletedIds));
      },
      failure: (failure) {
        emit(
          CommentState.error(
            error: CommentStateError.errorWhileDeletingComment,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                    COUNT                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> countComments({
    required CommentQueryFilter filter,
  }) async {
    emit(const CommentState.countingComment());

    final result = await _countCommentUseCase(filter: filter);

    result.when(
      success: (count) {
        emit(CommentState.countedComment(count: count));
      },
      failure: (failure) {
        emit(
          CommentState.error(
            error: CommentStateError.errorWhileCountingComment,
            errorMessage: failure.message,
          ),
        );
      },
    );
  }
}
