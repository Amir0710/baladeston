import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/login_with_password/login_with_password_usecase_business_rule.dart';
import 'package:baladeston/domain/auth/value_object/login_credentials.dart';
import 'package:baladeston/domain/verification/exception/verification_entity_exception.dart';

class LoginWithPasswordUseCase {
  final AuthRepository repository;

  const LoginWithPasswordUseCase({
    required this.repository,
  });

  Future<Result<bool, AuthFailure>> call({
    required LoginWithPasswordAttribute attribute,
  }) async {
    try {
      final rule = LoginWithPasswordUseCaseBusinessRule(
        attribute: attribute,
      );
      rule.validate();
    } on VerificationEntityException catch (e) {
      return Result.failure(
        AuthValidationFailure(e.message),
      );
    }

    return repository.loginWithPassword(
      attribute: attribute,
    );
  }
}
