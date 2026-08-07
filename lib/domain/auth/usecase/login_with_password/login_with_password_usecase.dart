import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/user_password/user_password_entity.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/login_with_password/login_with_password_usecase_business_rule.dart';

class LoginWithPasswordUseCase {
  final AuthRepository repository;

  const LoginWithPasswordUseCase({
    required this.repository,
  });

  Future<Result<bool, AuthFailure>> call({
    required UserPasswordEntity credentials,
  }) async {
    final rule = LoginWithPasswordUseCaseBusinessRule(
      attribute: credentials,
    );

    final validation = rule.validate();

    return validation.when(
      success: (_) => repository.loginWithPassword(
        loginWithPassword: credentials,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
