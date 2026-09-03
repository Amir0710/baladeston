import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

abstract class ReactionRepository {
  // Create reaction
  Future<Result<ReactionEntity, ReactionFailure>> createReaction({
    required ReactionEntity reaction,
  });

  // Update reaction by id
  Future<Result<ReactionEntity, ReactionFailure>> updateReactionById({
    required int id,
    required ReactionEntity reaction,
  });

  // Update reaction by filter
  Future<Result<ReactionEntity, ReactionFailure>> updateReactionByFilter({
    required ReactionQueryFilter filter,
    required ReactionEntity reaction,
  });

  // Get reaction by id
  Future<Result<ReactionEntity, ReactionFailure>> getReactionById({
    required int id,
  });

  // Get reactions by filter
  Future<Result<List<ReactionEntity>, ReactionFailure>> getReactionByFilter({
    required ReactionQueryFilter filter,
  });

  // Delete reaction by id
  Future<Result<int, ReactionFailure>> deleteReactionById({
    required int id,
  });

  // Delete reaction by filter (bulk)
  Future<Result<List<int>, ReactionFailure>> deleteReactionByFilter({
    required ReactionQueryFilter filter,
  });

  // Count reactions by filter
  Future<Result<int, ReactionFailure>> countReaction({
    required ReactionQueryFilter filter,
  });
}
