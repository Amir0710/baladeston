import 'package:baladeston/domain/watch_history/exception/watch_history_filter_exception.dart';
import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';

class CountWatchHistoryUseCaseBusinessRule {
  final WatchHistoryQueryFilter filter;

  const CountWatchHistoryUseCaseBusinessRule(this.filter);

  void validate() {
    _validatePagination();
    _validateOrder();
    _validateOwnerIfRequired();
  }

  /// --------------------------------------------------
  /// Guards
  /// --------------------------------------------------

  void _validatePagination() {
    if (filter.limit <= 0) {
      throw const FilterLimitException();
    }
    if (filter.offset < 0) {
      throw const FilterOffsetException();
    }
  }

  void _validateOrder() {
    const allowedOrderBy = ['lastPosition', 'updatedAt'];

    if (!allowedOrderBy.contains(filter.orderBy)) {
      throw const FilterOrderException();
    }
  }

  /// Count watch history **must be scoped to a user**
  void _validateOwnerIfRequired() {
    if (filter.userId == null || filter.userId! <= 0) {
      throw const FilterOwnerException();
    }
  }
}
