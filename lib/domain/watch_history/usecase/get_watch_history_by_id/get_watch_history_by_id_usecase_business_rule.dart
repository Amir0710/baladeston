import 'package:baladeston/domain/watch_history/exception/watch_history_id_exception.dart';

class GetWatchHistoryByIdUseCaseBusinessRule {
  final int id;

  const GetWatchHistoryByIdUseCaseBusinessRule(this.id);

  void validate() {
    if (id <= 0) {
      throw const WatchHistoryIdInvalidException();
    }
  }
}
