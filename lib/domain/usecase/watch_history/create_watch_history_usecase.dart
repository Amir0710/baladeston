import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class CreateWatchHistoryUseCase {
  final WatchHistoryRepository repository;

  CreateWatchHistoryUseCase({required this.repository});
  Future<WatchHistoryEntity> call({required WatchHistoryEntity watchHistory}) {
    return repository.createWatchHistory(watchHistory: watchHistory);
  }
}
