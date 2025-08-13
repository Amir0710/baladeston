import 'package:baladeston/domain/entitys/comment/comment_entity.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/usecase/comment/count_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/create_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/delete_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/comment/delete_comment_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/comment/get_comment_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/comment/get_comment_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/comment/update_comment_usecase.dart';
import 'package:baladeston/presentation/providers/comment_cubit/comment_state.dart';
import 'package:bloc/bloc.dart';

class CommentCubit extends Cubit<CommentState> {
  final CreateCommentUseCase _createUseCase;
  final UpdateCommentUseCase _updateUseCase;
  final CountCommentUseCase _countUseCase;
  final DeleteCommentByIdUseCase _deleteByIdUseCase;
  final DeleteCommentByFilterUseCase _deleteByFilterUseCase;
  final GetCommentByFilterUseCase _getByFilterUseCase;
  final GetCommentByIdUseCase _getByIdUseCase;

  CommentCubit({
    required CreateCommentUseCase createUseCase,
    required UpdateCommentUseCase updateUseCase,
    required CountCommentUseCase countUseCase,
    required DeleteCommentByIdUseCase deleteByIdUseCase,
    required DeleteCommentByFilterUseCase deleteByFilterUseCase,
    required GetCommentByFilterUseCase getByFilterUseCase,
    required GetCommentByIdUseCase getByIdUseCase,
  })  : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _countUseCase = countUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        super(const CommentState.initial());

  Future<void> loadComments(CommentQueryFilter filter) async {
    emit(const CommentState.loading());
    try {
      final comments = await _getByFilterUseCase(filter: filter) ?? [];
      final count = await _countUseCase(filter: filter);
      emit(CommentState.success(comments: comments, count: count));
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }

  Future<void> loadCommentById(int id) async {
    emit(const CommentState.loading());
    try {
      final comment = await _getByIdUseCase(id: id);
      if (comment != null) {
        emit(CommentState.success(comments: [comment], count: 1));
      } else {
        emit(const CommentState.failure(message: 'Comment not found'));
      }
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }

  Future<void> addComment(CommentEntity comment, CommentQueryFilter refreshFilter) async {
    emit(const CommentState.loading());
    try {
      await _createUseCase(comment: comment);
      await loadComments(refreshFilter);
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }

  Future<void> updateComment(CommentEntity comment, CommentQueryFilter refreshFilter) async {
    emit(const CommentState.loading());
    try {
      await _updateUseCase(comment: comment);
      await loadComments(refreshFilter);
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }

  Future<void> deleteCommentById(int id, CommentQueryFilter refreshFilter) async {
    emit(const CommentState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await loadComments(refreshFilter);
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }

  Future<void> deleteCommentsByFilter(CommentQueryFilter filter, CommentQueryFilter refreshFilter) async {
    emit(const CommentState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await loadComments(refreshFilter);
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }
}
