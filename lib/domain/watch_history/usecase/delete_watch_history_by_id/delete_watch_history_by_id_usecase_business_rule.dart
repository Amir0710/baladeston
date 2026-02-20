import 'package:baladeston/domain/watch_history/exception/watch_history_id_exception.dart';

class DeleteWatchHistoryByIdUseCaseBusinessRule {
  final int id;

  const DeleteWatchHistoryByIdUseCaseBusinessRule(this.id);

  void validate() {

    if (id <= 0) {
      throw const WatchHistoryIdInvalidException();
    }
  }
}
