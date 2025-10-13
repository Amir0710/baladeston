import 'package:baladeston/domain/entitys/verification/verification_entity.dart';

abstract class VerifyRepository {
  Future<Result<VerifyEntity>> sendVerificationCode(String phone);
  Future<Result<VerifyEntity>> checkVerificationCode(String phone, String code);
}
