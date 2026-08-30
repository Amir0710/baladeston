import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';
import 'package:baladeston/domain/discount/usecase/discount/get_discount_by_filter/get_discount_by_filter_usecase_business_rule.dart';

class GetDiscountByFilterUseCase {
  final DiscountRepository repository;

  const GetDiscountByFilterUseCase({required this.repository});

  Future<Result<PaginatedResponseModel<DiscountEntity>, DiscountFailure>>
      call({
    required DiscountQueryFilter filter,
  }) async {
    final businessRule = GetDiscountByFilterUsecaseBusinessRule(filter: filter);
    final validationResult = businessRule.validate();

    return validationResult.when(
      success: (_) => repository.getDiscountByFilter(filter: filter),
      failure: (failure) => Result.failure(failure),
    );
  }
}
