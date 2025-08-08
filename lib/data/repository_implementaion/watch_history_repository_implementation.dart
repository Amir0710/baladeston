import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/filters/watch_history_query_filter.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class WatchHistoryRepositoryImplementation extends WatchHistoryRepository {
  @override
  Future<WatchHistoryEntity> createWatchHistory(
      {required WatchHistoryEntity watchHistory}) {
    // TODO: implement createWatchHistory
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAllHistory() {
    // TODO: implement deleteAllHistory
    throw UnimplementedError();
  }

  @override
  Future<void> deleteWatchHistoryList(
      {required WatchHistoryQueryFilter filter}) {
    // TODO: implement deleteWatchHistoryList
    throw UnimplementedError();
  }

  @override
  Future<List<WatchHistoryEntity>?> getLastPositionbyFilter(
      {required WatchHistoryQueryFilter filter}) {
    // TODO: implement getLastPosition
    throw UnimplementedError();
  }

  @override
  Future<WatchHistoryEntity> updateLastPosition(
      {required WatchHistoryEntity watchHistory}) {
    // TODO: implement updateLastPosition
    throw UnimplementedError();
  }
}
