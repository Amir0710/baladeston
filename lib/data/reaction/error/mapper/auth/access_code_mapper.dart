import 'package:baladeston/data/reaction/api/error_codes/auth/reaction_access_error_code.dart' as codes;
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/domain/auth/reaction_authorization_failure.dart';

class ReactionAccessCodeMapper {
  const ReactionAccessCodeMapper();

  static final Map<String, ReactionFailure Function()> _map = {
    codes.ReactionAccessErrorCodes.forbidden: () =>
        const ReactionAccessForbiddenFailure() as ReactionFailure,
    codes.ReactionAccessErrorCodes.adminRequired: () =>
        const ReactionAccessAdminRequiredFailure() as ReactionFailure,
  };

  static ReactionFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
