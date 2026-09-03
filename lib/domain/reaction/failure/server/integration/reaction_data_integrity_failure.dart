import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

class ReactionDataIntegrityFailure extends BaseReactionDataIntegrityFailure {
  final String? debugMessage;
  final String? rawSource;

  const ReactionDataIntegrityFailure({
    this.debugMessage,
    this.rawSource,
  });
}
