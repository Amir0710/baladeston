import 'package:baladeston/domain/entitys/verification/verification_entity.dart';
import 'package:baladeston/domain/repositories/user_repository.dart';

class SendOtpUsecase {
  final UserRepository repository;

  SendOtpUsecase(this.repository);

  Future<VerificationEntity> call({required String phoneNumber}) {
    return repository.sendOtp(phoneNumber: phoneNumber);
  }
}
