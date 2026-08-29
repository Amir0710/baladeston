import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountRepository {
  Future<Result<PaginatedResponseModel<DiscountEntity>, DiscountFailure>>
      getDiscountByFilter({
    required DiscountQueryFilter filter,
  });

  Future<Result<DiscountEntity, DiscountFailure>> getDiscountById({
    required int id,
  });

  Future<Result<DiscountEntity, DiscountFailure>> createDiscount({
    required DiscountEntity discount,
  });

  Future<Result<DiscountEntity, DiscountFailure>> updateDiscountById({
    required int id,
    required DiscountEntity discount,
  });

  Future<Result<int, DiscountFailure>> updateDiscountByFilter({
    required DiscountQueryFilter filter,
    required DiscountEntity discount,
  });

  Future<Result<int, DiscountFailure>> deleteDiscountById({
    required int id,
  });

  Future<Result<int, DiscountFailure>> deleteDiscountByFilter({
    required DiscountQueryFilter filter,
  });

  Future<Result<int, DiscountFailure>> countAllDiscount({
    required DiscountQueryFilter filter,
  });
}
