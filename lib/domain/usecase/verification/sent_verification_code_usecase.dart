import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';
import 'package:baladeston/domain/repositories/verification_repository.dart';

class SendVerificationCodeUseCase {
  final VerifyRepository repository;

  SendVerificationCodeUseCase(this.repository);
  Future<Result<VerificationEntity>> call({required String phone}) async {
    final result = await repository.sendVerificationCode(phone);
    return result;
  }
}
