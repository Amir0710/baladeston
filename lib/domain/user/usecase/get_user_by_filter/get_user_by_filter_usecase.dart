import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/user/exception/user_filter_exception.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';
import 'package:baladeston/domain/user/repository/user_repository.dart';

import 'get_user_by_filter_usecase_business_rule.dart';

class GetUserByFilterUseCase {
  final UserRepository repository;

  const GetUserByFilterUseCase(this.repository);

  Future<Result<List<UserEntity>, UserFailure>> call({
    required UserQueryFilter filter,
  }) async {
    try {
      final rule = GetUserByFilterUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on UserFilterException catch (e) {
      return Result.failure(
        UserValidationFailure(e.message),
      );
    }

    /// ✅ delegation only
    return repository.getUserByFilter(
      filter: filter,
    );
  }
}
