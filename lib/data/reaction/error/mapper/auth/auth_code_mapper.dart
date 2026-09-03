import 'package:baladeston/data/reaction/api/error_codes/auth/reaction_auth_error_code.dart' as codes;
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/domain/auth/reaction_authentication_failure.dart';

class ReactionAuthCodeMapper {
  const ReactionAuthCodeMapper();

  static final Map<String, ReactionFailure Function()> _map = {
    codes.ReactionAuthErrorCode.unauthorized: () =>
        const ReactionAuthUnauthorizedFailure() as ReactionFailure,
    codes.ReactionAuthErrorCode.loginRequired: () =>
        const ReactionAuthLoginRequiredFailure() as ReactionFailure,
    codes.ReactionAuthErrorCode.invalidCredentials: () =>
        const ReactionAuthInvalidCredentialsFailure() as ReactionFailure,
  };

  static ReactionFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
