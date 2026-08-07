import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/Comment/failure/base_Comment_failure.dart';
import 'package:baladeston/domain/comment/entity/comment/comment_entity.dart';
import 'package:baladeston/domain/comment/repository/comment/comment_repository.dart';
import 'package:baladeston/data/comment/filter/comment/comment_query_filter.dart';
import 'package:baladeston/domain/comment/usecase/get_comment_by_filter/get_comment_by_filter_usecase_business_rule.dart';

class GetCommentByFilterUseCase {
  final CommentRepository repository;

  const GetCommentByFilterUseCase({required this.repository});

  Future<Result<List<CommentEntity>, CommentFailure>> call({
    required CommentQueryFilter filter,
  }) async {
    final businessRule = GetCommentByFilterUseCaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getCommentByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
