import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_id_exception.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';
import 'package:baladeston/domain/watch_history/repository/watch_history_repository.dart';

import 'delete_watch_history_by_id_usecase_business_rule.dart';

class DeleteWatchHistoryByIdUseCase {
  final WatchHistoryRepository repository;

  const DeleteWatchHistoryByIdUseCase({required this.repository});

  Future<Result<void, WatchHistoryFailure>> call({
    required int id,
  }) async {
    try {
      final rule = DeleteWatchHistoryByIdUseCaseBusinessRule(id);
      rule.validate();
    } on WatchHistoryIdException catch (e) {
      return Result.failure(
        WatchHistoryValidationFailure(e.message),
      );
    }

    return repository.deleteWatchHistoryById(id: id);
  }
}
