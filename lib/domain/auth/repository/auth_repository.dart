import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/auth/failure/auth_failure.dart';
import 'package:baladeston/domain/auth/value_object/login_credentials.dart';
import 'package:baladeston/domain/verification/entity/verification/verification_entity.dart';

abstract class AuthRepository {
  Future<Result<bool, AuthFailure>> loginWithPassword({
    required LoginWithPasswordAttribute attribute,
  });

  Future<Result<VerificationEntity, AuthFailure>> sendOtp({
    required VerificationEntity verification,
  });

  Future<Result<bool, AuthFailure>> checkToken();

  Future<Result<bool, AuthFailure>> checkUserExists({
    required String phone,
  });
}
