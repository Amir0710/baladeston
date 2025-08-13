import 'package:baladeston/data/datasources/remote/discount_remote_datasource/discount_api.dart';
import 'package:baladeston/data/mapper/discount_mapper.dart';
import 'package:baladeston/domain/entitys/discount/discount_entity.dart';
import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/repositories/discount_repository.dart';

class DiscountRepositoryImplementation extends DiscountRepository {
  final DiscountApi _api;

  DiscountRepositoryImplementation({required DiscountApi api}) : _api = api;
  @override
  Future<DiscountEntity> createDiscount(
      {required DiscountEntity discount}) async {
    try {
      final model = discount.toModel();
      final resultModel = await _api.createDiscount(discount: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteDiscountByFilter(
      {required DiscountQueryFilter filter}) async {
    try {
      await _api.deleteDiscountByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteDiscountById({required int id}) async {
    try {
      await _api.deleteDiscountById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<DiscountEntity> editDiscount(
      {required DiscountEntity discount}) async {
    try {
      final model = discount.toModel();
      final resultModle = await _api.editDiscount(discount: model);
      return resultModle.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<DiscountEntity>?> getDiscountByFilter(
      {required DiscountQueryFilter filter}) async {
    try {
      final resultModel = await _api.getDiscountByFilter(filter: filter);
      return resultModel?.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<DiscountEntity?> getDiscountById({required int id}) async {
    try {
      final resutModel = await _api.getDiscountById(id: id);
      return resutModel?.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<int> countDiscount({required DiscountQueryFilter filter}) async {
    try {
      return await _api.countDiscount(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
