import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_filter_exception.dart';

class DeleteWatchHistoryByFilterUseCaseBusinessRule {
  final WatchHistoryQueryFilter filter;

  const DeleteWatchHistoryByFilterUseCaseBusinessRule(this.filter);

  void validate() {
    _validateNotEmpty();
    _validateOwner();
    _validatePagination();
  }

  /// --------------------------------------------------
  /// Guards
  /// --------------------------------------------------

  /// Prevent accidental full-table delete
  void _validateNotEmpty() {
    final isEmpty =
        filter.userId == null &&
            filter.videoId == null &&
            filter.lastPositionSeconds == null &&
            filter.updatedAt == null;

    if (isEmpty) {
      throw const FilterEmptyException();
    }
  }

  /// Bulk delete must always be scoped to user
  void _validateOwner() {
    if (filter.userId == null || filter.userId! <= 0) {
      throw const FilterOwnerException();
    }
  }

  void _validatePagination() {
    if (filter.limit <= 0) {
      throw const FilterLimitException();
    }
    if (filter.offset < 0) {
      throw const FilterOffsetException();
    }
  }
}
