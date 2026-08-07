import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_id_exception.dart';
import 'package:baladeston/domain/watch_history/failure/watch_history_failure.dart';
import 'package:baladeston/domain/watch_history/repository/watch_history_repository.dart';
import 'package:baladeston/domain/watch_history/usecase/get_watch_history_by_id/get_watch_history_by_id_usecase_business_rule.dart';


class GetWatchHistoryByIdUseCase {
  final WatchHistoryRepository repository;

  const GetWatchHistoryByIdUseCase({required this.repository});

  Future<Result<WatchHistoryEntity, WatchHistoryFailure>> call({
    required int id,
  }) async {
    try {
      final rule = GetWatchHistoryByIdUseCaseBusinessRule(id);
      rule.validate();
    } on WatchHistoryIdException catch (e) {
      return Result.failure(
        WatchHistoryValidationFailure(e.message),
      );
    }

    return repository.getWatchHistoryById(id: id);
  }
}
