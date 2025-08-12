import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/entitys/discount/discount_entity.dart';

abstract class DiscountRepository {
  Future<DiscountEntity> createDiscount(
      {required DiscountEntity discount});
  Future<DiscountEntity> editDiscount(
      {required DiscountEntity discount}); 
  Future<List<DiscountEntity>> getDiscountByFilter(
      {required DiscountQueryFilter filter});
  Future<DiscountEntity> getDiscountById({required int id});
  Future<void> deleteDiscountByFilter({required DiscountQueryFilter filter});
  Future<DiscountEntity> deleteDiscountById(
      {required int id}); 
}
