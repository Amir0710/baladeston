import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/repository/auth_repository.dart';
import 'package:baladeston/domain/auth/usecase/check_token/check_token_usecase_business_rule.dart';

class CheckTokenUseCase {
  final AuthRepository repository;

  const CheckTokenUseCase({required this.repository});

  Future<Result<bool, AuthFailure>> call() async {
    final rule = CheckTokenBusinessRule();

    final validation = rule.validate();

    return validation.when(
      success: (_) => repository.checkToken(),
      failure: (failure) => Result.failure(failure),
    );
  }
}
