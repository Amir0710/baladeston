import '../entities/discount.dart';
import '../models/discount_query_filter.dart';

abstract class DiscountRepository {
  Future<void> createDiscount({required Discount discount}); // only for admin
  Future<void> editeDiscount({required Discount discount , required int discountId}); // only for admin
  Future<List<Discount>> getDiscount({required DiscountQueryFilter filter});
}
