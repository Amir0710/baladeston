import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';
import 'package:baladeston/domain/repositories/verification_repository.dart';

class CheckVerificationUseCase {
  final VerificationRepository repository;
  CheckVerificationUseCase(this.repository);
  Future<Result<String>> call(
      {required VerificationEntity verification}) async {
    final result =
        await repository.checkVerificationCode(verification: verification);
    return result;
  }
}
