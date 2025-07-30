import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class UpdateLastPosition {
  final WatchHistoryRepository repository;

  UpdateLastPosition({required this.repository});
  Future<WatchHistoryEntity> call(WatchHistoryEntity watchHistory) {
    return repository.updateLastPosition(watchHistory: watchHistory);
  }
}
