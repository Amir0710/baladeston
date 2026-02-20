import 'dart:io';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/collection/datasource/remote/collection_remote_datasource/collection_api.dart';
import 'package:baladeston/data/collection/filter/collection_query_filter.dart';
import 'package:baladeston/data/collection/model/collection_model.dart';

class CollectionApiImplementation extends CollectionApi {
  final String _baseUrl = AppConfig.apiBaseUrl;

  Uri _url(String path) => Uri.parse('$_baseUrl/collection/$path');


  @override
  Future<List<CollectionModel>> getCollectionByFilter({
    required CollectionQueryFilter filter,
  }) async {
    final uri = _url('filter').replace();


    throw UnimplementedError();
  }

  @override
  Future<CollectionModel> getCollectionById({
    required int id,
  }) async {
    final uri = _url('$id');


    throw UnimplementedError();
  }


  @override
  Future<CollectionModel> createCollection({
    required CollectionModel collection,
  }) async {
    final uri = _url('');

    final body = collection.toJson();


    throw UnimplementedError();
  }


  @override
  Future<CollectionModel> updateCollectionById({
    required CollectionModel collection,
    required int id,
  }) async {
    final uri = _url('$id');

    final body = collection.toJson();


    throw UnimplementedError();
  }

  @override
  Future<List<CollectionModel>> updateCollectionByFilter({
    required CollectionModel collection,
    required CollectionQueryFilter filter,
  }) async {
    final uri = _url('filter').replace(
    );

    final body = collection.toJson();


    throw UnimplementedError();
  }


  @override
  Future<int> deleteCollectionById({
    required int id,
  }) async {
    final uri = _url('$id');


    throw UnimplementedError();
  }

  @override
  Future<List<int>> deleteCollectionByFilter({
    required CollectionQueryFilter filter,
  }) async {
    final uri = _url('filter').replace(
    );


    throw UnimplementedError();
  }


  @override
  Future<int> countAllCollection({
    required CollectionQueryFilter filter,
  }) async {
    final uri = _url('count').replace(
    );


    throw UnimplementedError();
  }


  @override
  Future<String> addCollectionImage({
    required File image,
    required int id,
  }) async {
    final uri = _url('$id/image');


    throw UnimplementedError();
  }
}
