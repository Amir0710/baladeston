import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/exception/favorite_filter_exception.dart';

class DeleteFavoriteByFilterUseCaseBusinessRule {
  final FavoriteQueryFilter filter;

  const DeleteFavoriteByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateLimit();
    _validateOffset();
    _validateOrder();
    _validateOwner();
    _validateNotEmpty();
  }

  void _validateLimit() {
    if (filter.limit <= 0) {
      throw FilterLimitException();
    }
  }

  void _validateOffset() {
    if (filter.offset < 0) {
      throw FilterOffsetException();
    }
  }

  void _validateOrder() {
    const allowedOrders = ['createdAt'];
    if (!allowedOrders.contains(filter.orderBy)) {
      throw FilterOrderException();
    }
  }

  void _validateOwner() {
    if (filter.userId == null || filter.userId! <= 0) {
      throw FilterOwnerException();
    }
  }

  void _validateNotEmpty() {
    final hasAny = filter.userId != null ||
        filter.toggleId != null ||
        filter.interestedIn != null;

    if (!hasAny) {
      throw FilterEmptyException();
    }
  }
}
