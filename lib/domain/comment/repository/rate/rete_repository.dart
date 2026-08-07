import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/comment/filter/rate/rate_query_filter.dart';
import 'package:baladeston/domain/Comment/failure/base_Comment_failure.dart';
import 'package:baladeston/domain/comment/entity/rate/rating_entity.dart';

abstract class ReteRepository {
  Future<Result<RatingEntity, CommentFailure>> getRateByFilter({
    required RateQueryFilter filter,
  });
}
