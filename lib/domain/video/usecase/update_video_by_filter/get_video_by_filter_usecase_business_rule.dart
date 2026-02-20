import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/exception/video_filter_exception.dart';

class GetVideoByFilterUseCaseBusinessRule {
  final VideoQueryFilter filter;

  const GetVideoByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validatePagination();
    _validateOrder();
  }

  /// --------------------------------------------------
  /// Guards
  /// --------------------------------------------------

  void _validatePagination() {
    if (filter.limit <= 0) {
      throw const VideoFilterLimitException();
    }

    if (filter.offset < 0) {
      throw const VideoFilterOffsetException();
    }
  }

  void _validateOrder() {
    const allowedOrders = [
      'createdAt',
      'uploadedAt',
      'title',
      'rating',
    ];

    if (!allowedOrders.contains(filter.orderBy)) {
      throw const VideoFilterOrderException();
    }
  }
}
