import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/reaction/datasource/remote/reaction_remote_datasource/reaction_api.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';
import 'package:baladeston/data/reaction/mapper/reaction/reaction_mapper.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/domain/reaction/failure/base_reaction_failure.dart';
import 'package:baladeston/domain/reaction/repository/reaction/reaction_repository.dart';

class ReactionRepositoryImplementation extends ReactionRepository {
  final ReactionApi _api;

  ReactionRepositoryImplementation({required ReactionApi api}) : _api = api;

  @override
  Future<Result<ReactionEntity, ReactionFailure>> createReaction({
    required ReactionEntity reaction,
  }) async {
    final model = reaction.toModel();
    final result = await _api.createReaction(reaction: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<ReactionEntity, ReactionFailure>> updateReactionById({
    required int id,
    required ReactionEntity reaction,
  }) async {
    final model = reaction.toModel();
    final result = await _api.updateReactionById(id: id, reaction: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<ReactionEntity, ReactionFailure>> updateReactionByFilter({
    required ReactionQueryFilter filter,
    required ReactionEntity reaction,
  }) async {
    final model = reaction.toModel();
    final result = await _api.updateReactionByFilter(
      filter: filter,
      reaction: model,
    );

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<ReactionEntity, ReactionFailure>> getReactionById({
    required int id,
  }) async {
    final result = await _api.getReactionById(id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<List<ReactionEntity>, ReactionFailure>> getReactionByFilter({
    required ReactionQueryFilter filter,
  }) async {
    final result = await _api.getReactionByFilter(filter: filter);

    return result.map(
      success: (s) => Result.success(s.data.map((e) => e.toEntity()).toList()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, ReactionFailure>> deleteReactionById({
    required int id,
  }) async {
    final result = await _api.deleteReactionById(id: id);

    return result.map(
      success: (s) => Result.success(s.data),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<List<int>, ReactionFailure>> deleteReactionByFilter({
    required ReactionQueryFilter filter,
  }) async {
    final result = await _api.deleteReactionByFilter(filter: filter);

    return result.map(
      success: (s) => Result.success(s.data),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, ReactionFailure>> countReaction({
    required ReactionQueryFilter filter,
  }) async {
    final result = await _api.countReaction(filter: filter);

    return result.map(
      success: (s) => Result.success(s.data),
      failure: (f) => Result.failure(f.failure),
    );
  }
}
