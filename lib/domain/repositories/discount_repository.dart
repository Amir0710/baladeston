
import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/entitys/discount/discount_entity.dart';

abstract class DiscountRepository {

  Future<DiscountEntity> createDiscount({required DiscountEntity discount}); // only for admin
  Future<DiscountEntity> editeDiscount({required DiscountEntity discount , required int discountId}); // only for admin
  Future<List<DiscountEntity>> getDiscountByFilter({required DiscountQueryFilter filter});
  Future<DiscountEntity> getDiscountById({required int id });
}
