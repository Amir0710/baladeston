import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class DeleteDiscountByFilterUsecase {
  final DiscountRepository repository;

  DeleteDiscountByFilterUsecase(this.repository);

  Future<void> call({required DiscountQueryFilter filter }) {
    return repository.deleteDiscountByFilter(
        filter : filter);
  }
}
