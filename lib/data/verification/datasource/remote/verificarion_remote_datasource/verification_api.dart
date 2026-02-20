
import 'package:baladeston/data/auth/model/auth_session_model.dart';
import 'package:baladeston/data/verification/model/otp_session/otp_session_model.dart';
import 'package:baladeston/data/verification/model/verification/verification_model.dart';

abstract class VerificationApi {
  Future<OtpSessionModel> sendVerificationCode({
    required VerificationModel verification,
  });

  Future<AuthSessionModel> checkVerificationCode({
    required VerificationModel verification,
  });
}
