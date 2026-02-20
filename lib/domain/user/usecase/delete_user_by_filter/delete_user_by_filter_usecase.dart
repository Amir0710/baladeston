import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/exception/user_filter_exception.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';
import 'package:baladeston/domain/user/repository/user_repository.dart';

import 'delete_user_by_filter_usecase_business_rule.dart';

class DeleteUserByFilterUseCase {
  final UserRepository repository;

  const DeleteUserByFilterUseCase(this.repository);

  Future<Result<List<int>, UserFailure>> call({
    required UserQueryFilter filter,
  }) async {
    try {
      final rule = DeleteUserByFilterUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on UserFilterException catch (e) {
      return Result.failure(
        UserValidationFailure(e.message),
      );
    }

    return repository.deleteUserByFilter(
      filter: filter,
    );
  }
}
