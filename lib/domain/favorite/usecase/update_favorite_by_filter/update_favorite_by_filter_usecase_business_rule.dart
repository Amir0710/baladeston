import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/domain/favorite/exception/favorite_entity_exception.dart';
import 'package:baladeston/domain/favorite/exception/favorite_filter_exception.dart';

class UpdateFavoriteByFilterUseCaseBusinessRule {
  final FavoriteQueryFilter filter;
  final FavoriteEntity favorite;

  const UpdateFavoriteByFilterUseCaseBusinessRule({
    required this.filter,
    required this.favorite,
  });

  void validate() {
    _validateOwner();
    _validateFilterNotEmpty();
    _validateLimit();
    _validateOffset();
    _validateOrder();
    _validateUpdatableFields();
  }

  /// 🔒 Bulk update must be scoped
  void _validateOwner() {
    if (filter.userId == null || filter.userId! <= 0) {
      throw const FilterOwnerException();
    }
  }

  void _validateFilterNotEmpty() {
    final hasAnyFilter =
        filter.userId != null ||
            filter.toggleId != null ||
            filter.interestedIn != null;

    if (!hasAnyFilter) {
      throw const FilterEmptyException();
    }
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

  void _validateUpdatableFields() {
    final hasUpdatableField =
        favorite.targetId != null ||
            favorite.interestedIn != null;

    if (!hasUpdatableField) {
      throw const FavoriteNoUpdatableFieldsException();
    }
  }
}
