import 'package:baladeston/domain/repositories/verification_repository.dart';

class SentVerificationCodeUsecase {
  final VerifyRepository repository;

  SentVerificationCodeUsecase( this.repository);


  Future<int> call({required String phone}) async {
    return repository.sendVerificationCode(phone);
  }
}
