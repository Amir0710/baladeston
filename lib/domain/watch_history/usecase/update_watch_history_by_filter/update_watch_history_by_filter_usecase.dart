import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_entity_exception.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_filter_exception.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';
import 'package:baladeston/domain/watch_history/repository/watch_history_repository.dart';
import 'package:baladeston/domain/watch_history/usecase/update_watch_history_by_filter/update_watch_history_by_filter_usecase_business_rule.dart';

class UpdateWatchHistoryByFilterUseCase {
  final WatchHistoryRepository repository;

  const UpdateWatchHistoryByFilterUseCase({required this.repository});

  Future<Result<List<WatchHistoryEntity>, WatchHistoryFailure>> call({
    required WatchHistoryQueryFilter filter,
    required WatchHistoryEntity watchHistory,
  }) async {
    try {
      final rule = UpdateWatchHistoryByFilterUseCaseBusinessRule(
        watchHistory: watchHistory,
        filter: filter,
      );
      rule.validate();
    } on WatchHistoryFilterException catch (e) {
      return Result.failure(
        WatchHistoryValidationFailure(e.message),
      );
    } on WatchHistoryEntityException catch (e) {
      return Result.failure(
        WatchHistoryValidationFailure(e.message),
      );
    }

    return repository.updateWatchHistoryByFilter(
      filter: filter,
      watchHistory: watchHistory,
    );
  }
}
