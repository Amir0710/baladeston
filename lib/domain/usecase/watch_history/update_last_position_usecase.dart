import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class UpdateWatchHistoryUseCase {
  final WatchHistoryRepository repository;

  UpdateWatchHistoryUseCase({required this.repository});
  Future<WatchHistoryEntity> call({required WatchHistoryEntity watchHistory}) {
    return repository.updateLastPosition(watchHistory: watchHistory);
  }
}
