import 'package:baladeston/data/models/discount/discount_model.dart';
import 'package:baladeston/domain/filters/discount_query_filter.dart';

abstract class DiscountApi {
  Future<DiscountModel> createDiscount(
      {required DiscountModel discount});
  Future<DiscountModel> editDiscount(
      {required DiscountModel discount}); 
  Future<List<DiscountModel>> getDiscountByFilter(
      {required DiscountQueryFilter filter});
  Future<DiscountModel> getDiscountById({required int id});
  Future<void> deleteDiscountByFilter({required DiscountQueryFilter filter});
  Future<DiscountModel> deleteDiscountById(
      {required int id}); 
}
