import 'package:baladeston/data/reaction/api/error_codes/not_found/reaction_not_found_error_code.dart' as codes;
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/failure/domain/not_found/reaction_not_found_failure.dart';

class ReactionNotFoundCodeMapper {
  const ReactionNotFoundCodeMapper();

  static final Map<String, ReactionFailure Function()> _map = {
    codes.ReactionNotFoundErrorCode.reactionNotFound: () =>
        const ReactionModelNotFoundFailure() as ReactionFailure,
  };

  static ReactionFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
