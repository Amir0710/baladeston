import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/user/exception/user_id_exception.dart';
import 'package:baladeston/domain/user/failure/user_failure.dart';
import 'package:baladeston/domain/user/repository/user_repository.dart';

import 'delete_user_by_id_usecase_business_rule.dart';

class DeleteUserByIdUseCase {
  final UserRepository repository;

  const DeleteUserByIdUseCase(this.repository);

  Future<Result<void, UserFailure>> call({
    required int id,
  }) async {
    try {
      final rule = DeleteUserByIdUseCaseBusinessRule(
        id: id,
      );
      rule.validate();
    } on UserIdException catch (e) {
      return Result.failure(
        UserValidationFailure(e.message),
      );
    }

    return repository.deleteUserById(
      id: id,
    );
  }
}
