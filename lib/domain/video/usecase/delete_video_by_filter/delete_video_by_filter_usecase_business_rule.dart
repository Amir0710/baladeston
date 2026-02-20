import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/domain/video/exception/video_filter_exception.dart';

class DeleteVideoByFilterUseCaseBusinessRule {
  final VideoQueryFilter filter;

  const DeleteVideoByFilterUseCaseBusinessRule({
    required this.filter,
  });

  void validate() {
    _validateNotEmpty();
    _validatePagination();
    _validateOrderBy();
  }

  void _validateNotEmpty() {

  }

  void _validatePagination() {
    if (filter.limit <= 0) {
      throw const VideoFilterLimitException();
    }
    if (filter.offset < 0) {
      throw const VideoFilterOffsetException();
    }
  }

  void _validateOrderBy() {
    const allowedFields = ['id', 'title', 'duration', 'created_at'];
    if (filter.orderBy != null && !allowedFields.contains(filter.orderBy)) {
      throw const VideoFilterOrderException();
    }
  }
}
