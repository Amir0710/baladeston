import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/user/exception/user_entity_exception.dart';
import 'package:baladeston/domain/user/exception/user_filter_exception.dart';
import 'package:baladeston/domain/user/exception/user_id_exception.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';
import 'package:baladeston/domain/user/repository/user_repository.dart';
import 'package:baladeston/domain/user/usecase/update_user_by_filter/update_user_by_filter_business_rule.dart';

class UpdateUserByFilterUseCase {
  final UserRepository repository;

  const UpdateUserByFilterUseCase(this.repository);

  Future<Result<List<UserEntity>, UserFailure>> call({
    required UserQueryFilter filter,
    required UserEntity user,
  }) async {
    try {
      final rule = UpdateUserByFilterUseCaseBusinessRule(
        filter: filter,
        user: user,
      );
      rule.validate();
    } on UserFilterException catch (e) {
      return Result.failure(
        UserValidationFailure(e.message),
      );
    } on UserEntityException catch (e) {
      return Result.failure(
        UserValidationFailure(e.message),
      );
    }

    return repository.updateUserByFilter(
      filter: filter,
      user: user,
    );
  }
}
