import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class GetLastPosition {
  final WatchHistoryRepository repository;

  GetLastPosition(this.repository);

  Future<WatchHistoryEntity> call({required int  id}) {
    return repository.getLastPositionbyId(id : id);
  }
}
