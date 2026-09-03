import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/data/reaction/model/reaction_model.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';

abstract class ReactionApi {
  // Create
  Future<Result<ReactionModel, ReactionFailure>> createReaction({
    required ReactionModel reaction,
  });

  // Update
  Future<Result<ReactionModel, ReactionFailure>> updateReactionById({
    required int id,
    required ReactionModel reaction,
  });

  Future<Result<int, ReactionFailure>> updateReactionByFilter({
    required ReactionQueryFilter filter,
    required ReactionModel reaction,
  });

  // Read
  Future<Result<ReactionModel, ReactionFailure>> getReactionById({
    required int id,
  });

  Future<Result<List<ReactionModel>, ReactionFailure>> getReactionByFilter({
    required ReactionQueryFilter filter,
  });

  // Delete
  Future<Result<int, ReactionFailure>> deleteReactionById({
    required int id,
  });

  Future<Result<int, ReactionFailure>> deleteReactionByFilter({
    required ReactionQueryFilter filter,
  });

  // Count
  Future<Result<int, ReactionFailure>> countReaction({
    required ReactionQueryFilter filter,
  });
}
