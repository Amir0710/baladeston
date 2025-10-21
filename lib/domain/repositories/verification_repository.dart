import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/entitys/verification/verification_entity.dart';

abstract class VerifyRepository {
  Future<Result<VerificationEntity>> sendVerificationCode(String phone);
  Future<Result<VerificationEntity>> checkVerificationCode(String phone, String code);
}
