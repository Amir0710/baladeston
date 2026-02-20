import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/user/entity/user_entity.dart';
import 'package:baladeston/domain/user/exception/user_entity_exception.dart';
import 'package:baladeston/domain/user/exception/user_id_exception.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';
import 'package:baladeston/domain/user/repository/user_repository.dart';

import 'update_user_by_id_usecase_business_rule.dart';

class UpdateUserByIdUseCase {
  final UserRepository repository;

  const UpdateUserByIdUseCase(this.repository);

  Future<Result<UserEntity, UserFailure>> call({
    required int? userId,
    required UserEntity user,
  }) async {
    try {
      final rule = UpdateUserByIdUseCaseBusinessRule(
        userId: userId,
        user: user,
      );
      rule.validate();
    } on UserIdException catch (e) {
      return Result.failure(
        UserValidationFailure(e.message),
      );
    } on UserEntityException catch (e) {
      return Result.failure(
        UserValidationFailure(e.message),
      );
    }

    return repository.updateUserById(
      id: userId!,
      user: user,
    );
  }
}
