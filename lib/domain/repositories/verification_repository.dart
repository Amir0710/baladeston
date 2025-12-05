import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';

abstract class VerificationRepository {
  Future<Result<VerificationEntity>> sendVerificationCode(String phone);
  Future<Result<VerificationEntity>> resendVerificationCode(String phone);
  Future<Result<String>> checkVerificationCode({
    required VerificationEntity verification,
  });
}
