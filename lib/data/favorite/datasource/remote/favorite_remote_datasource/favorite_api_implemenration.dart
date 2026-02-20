import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/favorite/datasource/remote/favorite_remote_datasource/favorite_api.dart';
import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';
import 'package:baladeston/data/favorite/model/favorite_model.dart';

class FavoriteApiImplementation extends FavoriteApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/favorite/$path');

  @override
  Future<FavoriteModel> createFavorite({
    required FavoriteModel favorite,
  }) async {
    final uri = _url('');
    final body = favorite.toJson();

    throw UnimplementedError(); // TODO: HTTP POST
  }

  @override
  Future<FavoriteModel> updateFavoriteById({
    required int id,
    required FavoriteModel favorite,
  }) async {
    final uri = _url('$id');
    final body = favorite.toJson();

    throw UnimplementedError(); // TODO: HTTP PUT
  }

  @override
  Future<FavoriteModel> updateFavoriteByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteModel favorite,
  }) async {
    final uri = _url('filter').replace(
    );

    final body = favorite.toJson();

    throw UnimplementedError(); // TODO: HTTP PATCH
  }

  @override
  Future<FavoriteModel> getFavoriteById({
    required int id,
  }) async {
    final uri = _url('$id');

    throw UnimplementedError(); // TODO: HTTP GET
  }

  @override
  Future<List<FavoriteModel>> getFavoriteByFilter({
    required FavoriteQueryFilter filter,
  }) async {
    final uri = _url('filter').replace(
    );

    throw UnimplementedError(); // TODO: HTTP GET (List<FavoriteModel>)
  }

  @override
  Future<int> deleteFavoriteById({
    required int id,
  }) async {
    final uri = _url('$id');

    throw UnimplementedError(); // TODO: HTTP DELETE
  }

  @override
  Future<List<int>> deleteFavoriteByFilter({
    required FavoriteQueryFilter filter,
  }) async {
    final uri = _url('filter').replace(
    );

    throw UnimplementedError(); // TODO: HTTP DELETE (bulk)
  }

  @override
  Future<int> countFavorite({
    required FavoriteQueryFilter filter,
  }) async {
    final uri = _url('count').replace(
    );

    throw UnimplementedError(); // TODO: HTTP GET
  }
}
