import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/user/exception/user_id_exception.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';
import 'package:baladeston/domain/user/repository/user_repository.dart';

import 'get_user_by_id_usecase_business_rule.dart';

class GetUserByIdUseCase {
  final UserRepository repository;

  const GetUserByIdUseCase(this.repository);

  Future<Result<UserEntity, UserFailure>> call({
    required int id,
  }) async {
    try {
      final rule = GetUserByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on UserIdException catch (e) {
      return Result.failure(
        UserValidationFailure(e.message),
      );
    }

    /// ✅ delegation only
    return repository.getUserById(
      id: id,
    );
  }
}
