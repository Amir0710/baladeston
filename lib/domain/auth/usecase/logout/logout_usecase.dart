import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/logout_request/logout_request_entity.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/logout/logout_usecase_business_rule.dart';

class LogoutUseCase {
  final AuthRepository repository;

  const LogoutUseCase({
    required this.repository,
  });

  Future<Result<bool, AuthFailure>> call({
    required LogoutRequestEntity logoutRequest,
  }) async {
    final businessRule = LogoutUseCaseBusinessRule(
      logoutRequest: logoutRequest,
    );

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.logout(
        logoutRequest: logoutRequest,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
