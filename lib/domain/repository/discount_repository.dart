import '../entities/discount.dart';

abstract class DiscountRepository {
  Future<void> createDiscount({required Discount discount}); // only for admin
  Future<void> editeDiscount({required Discount discount}); // only for admin
  Future<List<Discount>> getDiscount({required int userId});
}
