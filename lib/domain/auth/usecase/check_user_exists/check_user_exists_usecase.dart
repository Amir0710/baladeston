import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/check_user_exists/check_user_exists_usecase_business_rule.dart';
import 'package:baladeston/domain/verification/exception/verification_entity_exception.dart';

class CheckUserExistsUseCase {
  final AuthRepository repository;

  const CheckUserExistsUseCase({
    required this.repository,
  });

  Future<Result<bool, AuthFailure>> call({
    required String phone,
  }) async {
    try {
      final rule = CheckUserExistsUseCaseBusinessRule(
        phone: phone,
      );
      rule.validate();
    } on VerificationEntityException catch (e) {
      return Result.failure(
        AuthValidationFailure(e.message),
      );
    }

    return repository.checkUserExists(
      phone: phone,
    );
  }
}
