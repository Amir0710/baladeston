import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';
import 'package:baladeston/domain/repositories/verification_repository.dart';

class ResendVerificationUseCase {
  final VerificationRepository repository;

  ResendVerificationUseCase(this.repository);
  Future<Result<VerificationEntity>> call({required String phone}) async {
    final result = await repository.resendVerificationCode(phone);
    return result;
  }
}
