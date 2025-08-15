import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class GetWatchHistoryByIdUseCase {
  final WatchHistoryRepository repository;

  GetWatchHistoryByIdUseCase({required this.repository});

  Future<WatchHistoryEntity?> call({required int id}) {
    return repository.getLastPositionById(id: id);
  }
}
