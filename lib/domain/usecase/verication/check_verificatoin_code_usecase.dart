import 'package:baladeston/domain/repositories/verification_repository.dart';

class CheckVerificationCodeUsecase {
  final VerifyRepository repository;

  CheckVerificationCodeUsecase(this.repository);

  Future<int> call({required String phone, required String code}) async {
    return repository.checkVerificationCode(phone, code);
  }
}
