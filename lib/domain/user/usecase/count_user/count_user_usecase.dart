import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/exception/user_filter_exception.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';
import 'package:baladeston/domain/user/repository/user_repository.dart';
import 'package:baladeston/domain/user/usecase/count_user/count_user_usecase_business_rule.dart';


class CountUserUseCase {
  final UserRepository repository;

  const CountUserUseCase(this.repository);

  Future<Result<int, UserFailure>> call({
    required UserQueryFilter filter,
  }) async {
    try {
      final rule = CountUserUseCaseBusinessRule(
        filter: filter,
      );
      rule.validate();
    } on UserFilterException catch (e) {
      return Result.failure(
        UserValidationFailure(e.message),
      );
    }

    return repository.countUser(
      filter: filter,
    );
  }
}
