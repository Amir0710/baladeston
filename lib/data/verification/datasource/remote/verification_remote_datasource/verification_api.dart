import 'package:baladeston/data/auth/model/auth_session/auth_session_model.dart';
import 'package:baladeston/data/verification/model/verification_check/verification_check_model.dart';
import 'package:baladeston/data/verification/model/verification_request/verification_request_model.dart';
import 'package:baladeston/data/verification/model/verification_response/verification_response_model.dart';

abstract class VerificationApi {
  Future<VerificationResponseModel> requestVerificationCode({
    required VerificationRequestModel verificationRequest,
  });

  Future<AuthSessionModel> checkLoginVerificationCode({
    required VerificationCheckModel verificationCheck,
  });

  Future<bool> checkActionVerificationCode({
    required VerificationCheckModel verificationCheck,
  });
}
