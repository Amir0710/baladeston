import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_filter_exception.dart';

class UpdateWatchHistoryByFilterUseCaseBusinessRule {
  final WatchHistoryQueryFilter filter;
  final WatchHistoryEntity watchHistory;

  const UpdateWatchHistoryByFilterUseCaseBusinessRule(
      {required this.filter, required this.watchHistory});

  void validate() {
    _validateOwner();
    _validatePagination();
    _validateOrder();
  }

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

  void _validateOrder() {
    final allowedOrders = ['lastPosition', 'updatedAt'];
    if (filter.orderBy != null && !allowedOrders.contains(filter.orderBy)) {
      throw const FilterOrderException();
    }
  }
}
