import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

class GetReactionByFilterUseCaseBusinessRule {
  final ReactionQueryFilter filter;

  const GetReactionByFilterUseCaseBusinessRule({
    required this.filter,
  });

  Result<void, ReactionFailure> validate() {
    return const Result.success(null);
  }
}
