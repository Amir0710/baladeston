import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_filter_exception.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';
import 'package:baladeston/domain/watch_history/repository/watch_history_repository.dart';

import 'delete_watch_history_by_filter_usecase_business_rule.dart';

class DeleteWatchHistoryByFilterUseCase {
  final WatchHistoryRepository repository;

  const DeleteWatchHistoryByFilterUseCase({required this.repository});

  Future<Result<List<int>, WatchHistoryFailure>> call({
    required WatchHistoryQueryFilter filter,
  }) async {
    try {
      final rule = DeleteWatchHistoryByFilterUseCaseBusinessRule(filter);
      rule.validate();
    } on WatchHistoryFilterException catch (e) {
      return Result.failure(
        WatchHistoryValidationFailure(e.message),
      );
    }

    return repository.deleteWatchHistoryByFilter(
      filter: filter,
    );
  }
}
