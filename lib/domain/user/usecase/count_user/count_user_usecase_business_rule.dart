import 'package:baladeston/data/user/filter/user_query_filter.dart';
import 'package:baladeston/domain/user/exception/user_filter_exception.dart';

class CountUserUseCaseBusinessRule {
  final UserQueryFilter filter;

  const CountUserUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateFilterNotEmpty();
    _validateRange();
  }

  /// Guard against full-table count without filter
  void _validateFilterNotEmpty() {
    final hasAnyCondition =
        filter.id != null ||
            (filter.searchTerm != null && filter.searchTerm!.trim().isNotEmpty) ||
            (filter.email != null && filter.email!.trim().isNotEmpty) ||
            (filter.phoneNumber != null &&
                filter.phoneNumber!.trim().isNotEmpty) ||
            (filter.status != null && filter.status!.trim().isNotEmpty) ||
            filter.createAt != null ||
            filter.birthday != null;

    if (!hasAnyCondition) {
      throw const UserFilterEmptyException();
    }
  }

  void _validateRange() {
    if (filter.limit <= 0) {
      throw const UserFilterLimitException();
    }

    if (filter.offset < 0) {
      throw const UserFilterOffsetException();
    }
  }
}
