import 'package:baladeston/data/verification/model/verification/verification_model.dart';
import 'package:baladeston/domain/auth/value_object/login_credentials.dart';

abstract class AuthApi {
  Future<bool> loginWithPassword({
    required LoginWithPasswordAttribute attribute,
  });

  Future<VerificationModel> sendOtp({required VerificationModel verification});

  Future<bool> checkToken();


  Future<bool> checkUserExists({required String phoneNumber});
}
