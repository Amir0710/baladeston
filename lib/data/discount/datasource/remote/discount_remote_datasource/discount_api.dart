import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/data/discount/model/discount_model.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';

abstract class DiscountApi {
  Future<Result<PaginatedResponseModel<DiscountModel>, DiscountFailure>>
      getDiscountByFilter({
    required DiscountQueryFilter filter,
  });

  Future<Result<DiscountModel, DiscountFailure>> getDiscountById({
    required int id,
  });

  Future<Result<DiscountModel, DiscountFailure>> createDiscount({
    required DiscountModel discount,
  });

  Future<Result<DiscountModel, DiscountFailure>> updateDiscountById({
    required DiscountModel discount,
    required int id,
  });

  Future<Result<int, DiscountFailure>> updateDiscountByFilter({
    required DiscountModel discount,
    required DiscountQueryFilter filter,
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
