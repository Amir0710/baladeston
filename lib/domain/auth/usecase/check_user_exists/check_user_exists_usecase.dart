import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/check_user_exists/check_user_exists_usecase_business_rule.dart';

class CheckUserExistsUseCase {
  final AuthRepository repository;

  const CheckUserExistsUseCase({
    required this.repository,
  });

  Future<Result<bool, AuthFailure>> call({
    required String phone,
  }) async {
    final rule = CheckUserExistsUseCaseBusinessRule(
      phone: phone,
    );

    final validation = rule.validate();

    return validation.when(
      success: (_) => repository.checkUserExists(
        phone: phone,
      ),
      failure: (failure) => Result.failure(failure),
    );
  }
}
