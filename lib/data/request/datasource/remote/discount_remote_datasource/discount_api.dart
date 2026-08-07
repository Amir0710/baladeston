import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/data/discount/model/discount_model.dart';

abstract class DiscountApi {
  // --------------------------------------------------
  // Create
  // --------------------------------------------------

  Future<DiscountModel> createDiscount({
    required DiscountModel discount,
  });

  // --------------------------------------------------
  // Update
  // --------------------------------------------------

  Future<DiscountModel> updateDiscountById({
    required int id,
    required DiscountModel discount,
  });

  Future<List<DiscountModel>> updateDiscountByFilter({
    required DiscountQueryFilter filter,
    required DiscountModel discount,
  });

  // --------------------------------------------------
  // Read
  // --------------------------------------------------

  Future<DiscountModel> getDiscountById({
    required int id,
  });

  Future<List<DiscountModel>> getDiscountByFilter({
    required DiscountQueryFilter filter,
  });

  // --------------------------------------------------
  // Delete
  // --------------------------------------------------

  Future<int> deleteDiscountById({
    required int id,
  });

  Future<List<int>> deleteDiscountByFilter({
    required DiscountQueryFilter filter,
  });

  // --------------------------------------------------
  // Count
  // --------------------------------------------------

  Future<int> countAllDiscount({
    required DiscountQueryFilter filter,
  });
}
