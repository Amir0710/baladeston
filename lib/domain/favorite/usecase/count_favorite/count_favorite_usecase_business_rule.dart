import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/exception/favorite_filter_exception.dart';

class CountFavoriteUseCaseBusinessRule {
  final FavoriteQueryFilter filter;

  const CountFavoriteUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateLimit();
    _validateOffset();
    _validateOrder();
    _validateNotEmpty();
  }

  void _validateLimit() {
    if (filter.limit <= 0) {
      throw const FilterLimitException();
    }
  }

  void _validateOffset() {
    if (filter.offset < 0) {
      throw const FilterOffsetException();
    }
  }

  void _validateOrder() {
    if (filter.orderBy != 'createdAt') {
      throw const FilterOrderException();
    }
  }

  void _validateNotEmpty() {
    final hasAnyFilter =
        filter.userId != null ||
            filter.toggleId != null ||
            filter.interestedIn != null;

    if (!hasAnyFilter) {
      throw const FilterEmptyException();
    }
  }
}
