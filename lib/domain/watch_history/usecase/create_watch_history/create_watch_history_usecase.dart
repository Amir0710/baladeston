import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_entity_exception.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';
import 'package:baladeston/domain/watch_history/repository/watch_history_repository.dart';

import 'create_watch_history_usecase_business_rule.dart';

class CreateWatchHistoryUseCase {
  final WatchHistoryRepository repository;

  const CreateWatchHistoryUseCase({required this.repository});

  Future<Result<WatchHistoryEntity, WatchHistoryFailure>> call({
    required WatchHistoryEntity watchHistory,
  }) async {
    try {
      final rule = CreateWatchHistoryUseCaseBusinessRule(watchHistory);
      rule.validate();
    } on WatchHistoryEntityException catch (e) {
      return Result.failure(
        WatchHistoryValidationFailure(e.message),
      );
    }

    return repository.createWatchHistory(
      watchHistory: watchHistory,
    );
  }
}
