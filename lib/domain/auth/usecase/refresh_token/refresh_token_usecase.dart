import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/entity/auth_session/auth_session_entity.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/refresh_token/refresh_token_usecase_business_rule.dart';

class RefreshTokenUseCase {
  final AuthRepository repository;

  const RefreshTokenUseCase({
    required this.repository,
  });

  Future<Result<AuthSessionEntity, AuthFailure>> call({
    required String refreshToken,
  }) async {
    final businessRule =
        RefreshTokenUseCaseBusinessRule(refreshToken: refreshToken);

    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.refreshToken(refreshToken: refreshToken),
      failure: (failure) => Result.failure(failure),
    );
  }
}
