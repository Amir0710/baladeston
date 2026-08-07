import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_filter_exception.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';
import 'package:baladeston/domain/watch_history/repository/watch_history_repository.dart';
import 'package:baladeston/domain/watch_history/usecase/get_watch_history_by_filter/get_watch_history_by_filter_usecase_business_rule.dart';


class GetWatchHistoryByFilterUseCase {
  final WatchHistoryRepository repository;

  const GetWatchHistoryByFilterUseCase({required this.repository});

  Future<Result<List<WatchHistoryEntity>, WatchHistoryFailure>> call({
    required WatchHistoryQueryFilter filter,
  }) async {
    try {
      final rule = GetWatchHistoryByFilterUseCaseBusinessRule(filter);
      rule.validate();
    } on WatchHistoryFilterException catch (e) {
      return Result.failure(
        WatchHistoryValidationFailure(e.message),
      );
    }

    return repository.getWatchHistoryByFilter(filter: filter);
  }
}
