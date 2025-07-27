import 'package:baladeston/domain/entitys/discount/discount_entity.dart';
import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class DiscountRepositoryImplementation extends DiscountRepository {
  @override
  Future<void> createDiscount({required DiscountEntity discount}) {
    // TODO: implement createDiscount
    throw UnimplementedError();
  }

  @override
  Future<void> editeDiscount({required DiscountEntity discount, required int discountId}) {
    // TODO: implement editeDiscount
    throw UnimplementedError();
  }

  @override
  Future<List<DiscountEntity>> getDiscount({required DiscountQueryFilter filter}) {
    // TODO: implement getDiscount
    throw UnimplementedError();
  }
}