import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/data/purchase/datasource/remote/purchase_remote_datasource/purchase_api.dart';
import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/data/purchase/mapper/purchase_mapper.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure.dart';
import 'package:baladeston/domain/purchase/failure/purchase_failure_mapper.dart';
import 'package:baladeston/domain/purchase/repository/purchase_repository.dart';

class PurchaseRepositoryImplementation implements PurchaseRepository {
  final PurchaseApi api;

  const PurchaseRepositoryImplementation(this.api);

  @override
  Future<Result<List<PurchaseEntity>, PurchaseFailure>>
  getPurchaseByFilter({
    required PurchaseQueryFilter filter,
  }) async {
    try {
      final result = await api.getPurchaseByFilter(filter: filter);
      return Result.success(
        result.map((e) => e.toEntity()).toList(),
      );
    } catch (error) {
      return Result.failure(mapPurchaseException(error));
    }
  }

  @override
  Future<Result<PurchaseEntity, PurchaseFailure>> getPurchaseById({
    required int id,
  }) async {
    try {
      final result = await api.getPurchaseById(id: id);
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapPurchaseException(error));
    }
  }

  @override
  Future<Result<PurchaseEntity, PurchaseFailure>> createPurchase({
    required PurchaseEntity purchase,
  }) async {
    try {
      final result = await api.createPurchase(
        purchase: purchase.toModel(),
      );
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapPurchaseException(error));
    }
  }

  @override
  Future<Result<PurchaseEntity, PurchaseFailure>> updatePurchaseById({
    required int id,
    required PurchaseEntity purchase,
  }) async {
    try {
      final result = await api.updatePurchaseById(
        id: id,
        purchase: purchase.toModel(),
      );
      return Result.success(result.toEntity());
    } catch (error) {
      return Result.failure(mapPurchaseException(error));
    }
  }

  @override
  Future<Result<List<PurchaseEntity>, PurchaseFailure>>
  updatePurchaseByFilter({
    required PurchaseQueryFilter filter,
    required PurchaseEntity purchase,
  }) async {
    try {
      final result = await api.updatePurchaseByFilter(
        filter: filter,
        purchase: purchase.toModel(),
      );
      return Result.success(
        result.map((e) => e.toEntity()).toList(),
      );
    } catch (error) {
      return Result.failure(mapPurchaseException(error));
    }
  }

  @override
  Future<Result<int, PurchaseFailure>> deletePurchaseById({
    required int id,
  }) async {
    try {
      final result = await api.deletePurchaseById(id: id);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapPurchaseException(error));
    }
  }

  @override
  Future<Result<List<int>, PurchaseFailure>> deletePurchaseByFilter({
    required PurchaseQueryFilter filter,
  }) async {
    try {
      final result = await api.deletePurchaseByFilter(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapPurchaseException(error));
    }
  }

  @override
  Future<Result<int, PurchaseFailure>> countAllPurchase({
    required PurchaseQueryFilter filter,
  }) async {
    try {
      final result = await api.countAllPurchase(filter: filter);
      return Result.success(result);
    } catch (error) {
      return Result.failure(mapPurchaseException(error));
    }
  }
}
