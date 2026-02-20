import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/exception/video_filter_exception.dart';

class CountVideoUseCaseBusinessRule {
  final VideoQueryFilter filter;

  const CountVideoUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateLimit();
    _validateOffset();
    _validateOrder();
  }


  void _validateLimit() {
    if (filter.limit <= 0) {
      throw const VideoFilterLimitException();
    }
  }

  void _validateOffset() {
    if (filter.offset < 0) {
      throw const VideoFilterOffsetException();
    }
  }

  void _validateOrder() {

    const allowedOrderFields = [
      'name',
      'uploadedAt',
      'rating',
    ];

    if (!allowedOrderFields.contains(filter.orderBy)) {
      throw const VideoFilterOrderException();
    }
  }
}
