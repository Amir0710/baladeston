import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

class ReactionModelParsingFailure extends BaseReactionModelParsingFailure {
  final String? debugMessage;
  final String? rawSource;

  const ReactionModelParsingFailure({
    this.debugMessage,
    this.rawSource,
  });
}
