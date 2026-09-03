import 'package:baladeston/data/reaction/api/error_codes/reaction/reaction_model_error_code.dart' as codes;
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/domain/validation/reaction_validation_failure.dart';

class ReactionModelCodeMapper {
  const ReactionModelCodeMapper();

  static final Map<String, ReactionFailure Function()> _map = {
    codes.ReactionModelErrorCodes.invalidUserId: () =>
        const ReactionValidationFailure() as ReactionFailure,
    codes.ReactionModelErrorCodes.invalidTargetId: () =>
        const ReactionValidationFailure() as ReactionFailure,
    codes.ReactionModelErrorCodes.invalidReactionType: () =>
        const ReactionValidationFailure() as ReactionFailure,
    codes.ReactionModelErrorCodes.invalidTargetType: () =>
        const ReactionValidationFailure() as ReactionFailure,
  };

  static ReactionFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
