import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class DeleteWatchHistoryByIdUseCase {
  final WatchHistoryRepository repository;

  DeleteWatchHistoryByIdUseCase({required this.repository});

  Future<void> call({required int id}) {
    return repository.deleteWatchHistoryById(id: id);
  }
}
