import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/entitys/discount/discount.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class GetDiscountUseCase {
  final DiscountRepository repository;

  GetDiscountUseCase(this.repository);

  Future<List<Discount>> call(DiscountQueryFilter filter) {
    return repository.getDiscount(filter: filter);
  }
}
