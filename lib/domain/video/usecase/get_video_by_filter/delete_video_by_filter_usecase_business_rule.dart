import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/exception/video_filter_exception.dart';

class DeleteVideoByFilterUseCaseBusinessRule {
  final VideoQueryFilter filter;

  const DeleteVideoByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateFilterNotEmpty();
    _validatePagination();
    _validateOrderField();
  }


  void _validateFilterNotEmpty() {
    final isEmpty =
        filter.id == null &&
            filter.category == null &&
            filter.searchTerm == null &&
            filter.status == null &&
            filter.uploaderId == null &&
            filter.categoryId == null &&
            filter.minRating == null &&
            filter.maxRating == null &&
            filter.uploadedAfter == null &&
            filter.uploadedBefore == null &&
            filter.requiredAge == null;

    if (isEmpty) {
      throw const VideoFilterEmptyException();
    }
  }

    void _validatePagination() {
      if (filter.limit <= 0) {
        throw const VideoFilterLimitException();
      }
      if (filter.offset < 0) {
        throw const VideoFilterOffsetException();
      }
    }

  void _validateOrderField() {
    const allowedOrders = ['name', 'uploadedAt', 'rating'];
    if (!allowedOrders.contains(filter.orderBy)) {
      throw const VideoFilterOrderException();
    }
  }
}
