import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/discount/datasource/remote/discount_remote_datasource/discount_api.dart';
import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/data/discount/model/discount_model.dart';

class DiscountApiImplementation extends DiscountApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/discount/$path');


  @override
  Future<DiscountModel> createDiscount({
    required DiscountModel discount,
  }) async {
    final uri = _url('');
    final body = discount.toJson();

    throw UnimplementedError();
  }


  @override
  Future<DiscountModel> updateDiscountById({
    required int id,
    required DiscountModel discount,
  }) async {
    final uri = _url('$id');
    final body = discount.toJson();

    throw UnimplementedError();
  }

  @override
  Future<List<DiscountModel>> updateDiscountByFilter({
    required DiscountQueryFilter filter,
    required DiscountModel discount,
  }) async {
    final uri = _url('filter').replace(
    );

    final body = discount.toJson();

    throw UnimplementedError();
  }


  @override
  Future<DiscountModel> getDiscountById({
    required int id,
  }) async {
    final uri = _url('$id');

    throw UnimplementedError();
  }

  @override
  Future<List<DiscountModel>> getDiscountByFilter({
    required DiscountQueryFilter filter,
  }) async {
    final uri = _url('filter').replace(
    );

    throw UnimplementedError();
  }


  @override
  Future<int> deleteDiscountById({
    required int id,
  }) async {
    final uri = _url('$id');

    throw UnimplementedError();
  }

  @override
  Future<List<int>> deleteDiscountByFilter({
    required DiscountQueryFilter filter,
  }) async {
    final uri = _url('filter').replace(
    );

    throw UnimplementedError();
  }


  @override
  Future<int> countAllDiscount({
    required DiscountQueryFilter filter,
  }) async {
    final uri = _url('count').replace(
    );

    throw UnimplementedError();
  }
}
