import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';
import 'package:baladeston/domain/repositories/verification_repository.dart';

class CheckVerificationCodeUseCase {
  final VerifyRepository repository;

  CheckVerificationCodeUseCase(this.repository);

  Future<Result<VerificationEntity>> call({
    required String phone,
    required String code,
  }) async {
    final result = await repository.checkVerificationCode(phone, code);
    return result;
  }
}
