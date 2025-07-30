import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class DeleteAllHistory {
  final WatchHistoryRepository repository;

  DeleteAllHistory(this.repository);
  
  Future<void> call() {
    return repository.deleteAllHistory();
  }
}
      