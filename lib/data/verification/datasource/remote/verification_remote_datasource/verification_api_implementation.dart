import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/auth/model/auth_session/auth_session_model.dart';
import 'package:baladeston/data/verification/datasource/remote/verification_remote_datasource/verification_api.dart';
import 'package:baladeston/data/verification/model/verification_check/verification_check_model.dart';
import 'package:baladeston/data/verification/model/verification_request/verification_request_model.dart';
import 'package:baladeston/data/verification/model/verification_response/verification_response_model.dart';

class VerificationApiImplementation implements VerificationApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/verification/$path');

  @override
  Future<bool> checkActionVerificationCode({required VerificationCheckModel verificationCheck}) {
    // TODO: implement checkActionVerificationCode
    throw UnimplementedError();
  }

  @override
  Future<AuthSessionModel> checkLoginVerificationCode({required VerificationCheckModel verificationCheck}) {
    // TODO: implement checkLoginVerificationCode
    throw UnimplementedError();
  }

  @override
  Future<VerificationResponseModel> requestVerificationCode({required VerificationRequestModel verificationRequest}) {
    // TODO: implement requestVerificationCode
    throw UnimplementedError();
  }
}
