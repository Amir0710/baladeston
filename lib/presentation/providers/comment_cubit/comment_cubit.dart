// lib/presentation/providers/comment_cubit/comment_cubit.dart
import 'package:bloc/bloc.dart';

import 'package:baladeston/domain/entitys/comment/comment_entity.dart';
import 'package:baladeston/domain/filters/comment_query_filter.dart';
import 'package:baladeston/domain/usecase/comment/count_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/create_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/delete_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/get_comment_usecase.dart';
import 'package:baladeston/domain/usecase/comment/update_comment_usecase.dart';
import 'package:baladeston/presentation/providers/comment_cubit/comment_state.dart';


class CommentCubit extends Cubit<CommentState> {
  final CreateCommentUseCase _createUseCase;
  final UpdateCommentUseCase _updateUseCase;
  final CountCommentUseCase _countUseCase;
  final DeleteCommentUseCase _deleteUseCase;
  final GetCommentUseCase _getUseCase;

CommentCubit({
    required CreateCommentUseCase createUseCase,
    required UpdateCommentUseCase updateUseCase,
    required CountCommentUseCase  countUseCase,
    required DeleteCommentUseCase deleteUseCase,
    required GetCommentUseCase    getUseCase,
  })  : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _countUseCase  = countUseCase,
        _deleteUseCase = deleteUseCase,
        _getUseCase    = getUseCase,
        super(const CommentState.initial());


  /// بارگذاری لیست کامنت و شمارش آن
  Future<void> loadComments(CommentQueryFilter filter) async {
    emit(const CommentState.loading());
    try {
      final comments = await _getUseCase(filter);
      final count = await _countUseCase(filter.targetId!);
      emit(CommentState.success(comments: comments ?? [], count: count));
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }

  /// ایجاد یک کامنت
  Future<void> addComment(CommentEntity comment) async {
    emit(const CommentState.loading());
    try {
      await _createUseCase(comment);
      // فرض کن بعد از ایجاد می‌خواهی مجدداً لیست را بارگذاری کنی
      emit(const CommentState.loading());
      // قبلاً filter را ذخیره کرده‌ای یا می‌آوری
      // await loadComments(savedFilter);
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }

  /// آپدیت کامنت
  Future<void> updateComment(CommentEntity comment) async {
    emit(const CommentState.loading());
    try {
      await _updateUseCase(comment);
      // مجدداً بارگذاری کامنت‌ها و ...
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }

  /// حذف کامنت
  Future<void> deleteComment({
    required int commentId,
    required int userId,
  }) async {
    emit(const CommentState.loading());
    try {
      await _deleteUseCase(commentId: commentId, userId: userId);
      // پس از حذف، لیست را بروزرسانی کن
    } catch (e) {
      emit(CommentState.failure(message: e.toString()));
    }
  }
}
