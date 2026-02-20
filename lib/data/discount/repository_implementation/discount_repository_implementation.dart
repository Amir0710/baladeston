import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/discount/datasource/remote/discount_remote_datasource/discount_api.dart';
import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/data/discount/mapper/discount_mapper.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/discount_failure.dart';
import 'package:baladeston/domain/discount/failure/discount_failure_mapper.dart';
import 'package:baladeston/domain/discount/repository/discount_repository.dart';

class DiscountRepositoryImplementation extends DiscountRepository {
  final DiscountApi _api;

  DiscountRepositoryImplementation({required DiscountApi api}) : _api = api;

  // --------------------------------------------------
  // Read
  // --------------------------------------------------

  @override
  Future<Result<List<DiscountEntity>, DiscountFailure>> getDiscountByFilter({
    required DiscountQueryFilter filter,
  }) async {
    try {
      final models = await _api.getDiscountByFilter(filter: filter);
      return Result.success(models.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapDiscountException(error));
    }
  }

  @override
  Future<Result<DiscountEntity, DiscountFailure>> getDiscountById({
    required int id,
  }) async {
    try {
      final model = await _api.getDiscountById(id: id);
      return Result.success(model.toEntity());
    } catch (error) {
      return Result.failure(mapDiscountException(error));
    }
  }

  // --------------------------------------------------
  // Create
  // --------------------------------------------------

  @override
  Future<Result<DiscountEntity, DiscountFailure>> createDiscount({
    required DiscountEntity discount,
  }) async {
    try {
      final model = discount.toModel();
      final resultModel = await _api.createDiscount(discount: model);
      return Result.success(resultModel.toEntity());
    } catch (error) {
      return Result.failure(mapDiscountException(error));
    }
  }

  // --------------------------------------------------
  // Update
  // --------------------------------------------------

  @override
  Future<Result<DiscountEntity, DiscountFailure>> updateDiscountById({
    required int id,
    required DiscountEntity discount,
  }) async {
    try {
      final model = discount.toModel();
      final updatedModel =
      await _api.updateDiscountById(id: id, discount: model);
      return Result.success(updatedModel.toEntity());
    } catch (error) {
      return Result.failure(mapDiscountException(error));
    }
  }

  @override
  Future<Result<List<DiscountEntity>, DiscountFailure>> updateDiscountByFilter({
    required DiscountQueryFilter filter,
    required DiscountEntity discount,
  }) async {
    try {
      final model = discount.toModel();
      final models = await _api.updateDiscountByFilter(
        filter: filter,
        discount: model,
      );
      return Result.success(models.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Result.failure(mapDiscountException(error));
    }
  }

  // --------------------------------------------------
  // Delete
  // --------------------------------------------------

  @override
  Future<Result<int, DiscountFailure>> deleteDiscountById({
    required int id,
  }) async {
    try {
      final deletedId = await _api.deleteDiscountById(id: id);
      return Result.success(deletedId);
    } catch (error) {
      return Result.failure(mapDiscountException(error));
    }
  }

  @override
  Future<Result<List<int>, DiscountFailure>> deleteDiscountByFilter({
    required DiscountQueryFilter filter,
  }) async {
    try {
      final ids = await _api.deleteDiscountByFilter(filter: filter);
      return Result.success(ids);
    } catch (error) {
      return Result.failure(mapDiscountException(error));
    }
  }

  // --------------------------------------------------
  // Count
  // --------------------------------------------------

  @override
  Future<Result<int, DiscountFailure>> countAllDiscount({
    required DiscountQueryFilter filter,
  }) async {
    try {
      final result = await _api.countAllDiscount(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapDiscountException(error));
    }
  }
}
