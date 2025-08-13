import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class CountDiscountUseCase {
  final DiscountRepository repository;

  CountDiscountUseCase(this.repository);

  Future<int> call({required DiscountQueryFilter filter }) {
    return repository.countDiscount(
        filter : filter);
  }
}
