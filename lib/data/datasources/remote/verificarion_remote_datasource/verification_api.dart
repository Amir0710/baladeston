import 'package:baladeston/data/models/verification/verification_model.dart';

abstract class VerificationApi {
  Future<VerificationModel> sendVerificationCode(String phone);
  Future<VerificationModel> resendVerificationCode(String phone);
  Future<String> checkVerificationCode({ required VerificationModel verification,
  });
}
