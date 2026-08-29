import 'package:baladeston/core/model/paginated_response_model.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/datasource/remote/discount_remote_datasource/discount_api.dart';
import 'package:baladeston/data/discount/filter/discount/discount_query_filter.dart';
import 'package:baladeston/data/discount/mapper/discount/discount_mapper.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';

class DiscountRepositoryImplementation extends DiscountRepository {
  final DiscountApi _api;

  DiscountRepositoryImplementation({
    required DiscountApi api,
  }) : _api = api;

  @override
  Future<Result<PaginatedResponseModel<DiscountEntity>, DiscountFailure>>
      getDiscountByFilter({
    required DiscountQueryFilter filter,
  }) async {
    final result = await _api.getDiscountByFilter(filter: filter);

    return result.map(
      success: (s) {
        final paginatedModel = s.data;
        final entities = paginatedModel.items.map((e) => e.toEntity()).toList();

        final mapped = PaginatedResponseModel<DiscountEntity>(
          items: entities,
          nextCursor: paginatedModel.nextCursor,
          isLast: paginatedModel.isLast,
        );

        return Result.success(mapped);
      },
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<DiscountEntity, DiscountFailure>> getDiscountById({
    required int id,
  }) async {
    final result = await _api.getDiscountById(id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<DiscountEntity, DiscountFailure>> createDiscount({
    required DiscountEntity discount,
  }) async {
    final model = discount.toModel();
    final result = await _api.createDiscount(discount: model);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<DiscountEntity, DiscountFailure>> updateDiscountById({
    required int id,
    required DiscountEntity discount,
  }) async {
    final model = discount.toModel();
    final result = await _api.updateDiscountById(discount: model, id: id);

    return result.map(
      success: (s) => Result.success(s.data.toEntity()),
      failure: (f) => Result.failure(f.failure),
    );
  }

  @override
  Future<Result<int, DiscountFailure>> updateDiscountByFilter({
    required DiscountQueryFilter filter,
    required DiscountEntity discount,
  }) async {
    final model = discount.toModel();
    return _api.updateDiscountByFilter(
      discount: model,
      filter: filter,
    );
  }

  @override
  Future<Result<int, DiscountFailure>> deleteDiscountById({
    required int id,
  }) {
    return _api.deleteDiscountById(id: id);
  }

  @override
  Future<Result<int, DiscountFailure>> deleteDiscountByFilter({
    required DiscountQueryFilter filter,
  }) {
    return _api.deleteDiscountByFilter(filter: filter);
  }

  @override
  Future<Result<int, DiscountFailure>> countAllDiscount({
    required DiscountQueryFilter filter,
  }) {
    return _api.countAllDiscount(filter: filter);
  }
}
