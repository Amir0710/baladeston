
import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/entitys/discount/discount.dart';

abstract class DiscountRepository {
  Future<void> createDiscount({required Discount discount}); // only for admin
  Future<void> editeDiscount({required Discount discount , required int discountId}); // only for admin
  Future<List<Discount>> getDiscount({required DiscountQueryFilter filter});
}
