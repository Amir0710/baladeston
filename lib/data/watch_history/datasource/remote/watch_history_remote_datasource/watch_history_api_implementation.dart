import 'package:baladeston/data/watch_history/datasource/remote/watch_history_remote_datasource/watch_history_api.dart';
import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/data/watch_history/model/watch_history_model.dart';

import 'package:baladeston/domain/watch_history/exception/watch_history_entity_exception.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_filter_exception.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_id_exception.dart';

class WatchHistoryApiImplementation implements WatchHistoryApi {
  // Create

  @override
  Future<WatchHistoryModel> createWatchHistory({
    required WatchHistoryModel watchHistory,
  }) async {
    _validateEntity(watchHistory);

    throw UnimplementedError();
  }

  // Update

  @override
  Future<WatchHistoryModel> updateWatchHistoryById({
    required int id,
    required WatchHistoryModel watchHistory,
  }) async {
    _validateId(id);



    throw UnimplementedError();
  }

  @override
  Future<List<WatchHistoryModel>> updateWatchHistoryByFilter({
    required WatchHistoryQueryFilter filter,
    required WatchHistoryModel watchHistory,
  }) async {
    _validateFilter(filter);



    throw UnimplementedError();
  }

  // Read

  @override
  Future<WatchHistoryModel> getWatchHistoryById({
    required int id,
  }) async {
    _validateId(id);

    throw UnimplementedError();
  }

  @override
  Future<List<WatchHistoryModel>> getWatchHistoryByFilter({
    required WatchHistoryQueryFilter filter,
  }) async {
    _validateFilter(filter);

    throw UnimplementedError();
  }

  // Delete

  @override
  Future<int> deleteWatchHistoryById({
    required int id,
  }) async {
    _validateId(id);

    throw UnimplementedError();
  }

  @override
  Future<List<int>> deleteWatchHistoryByFilter({
    required WatchHistoryQueryFilter filter,
  }) async {

    throw UnimplementedError();
  }

  // Count

  @override
  Future<int> countWatchHistory({
    required WatchHistoryQueryFilter filter,
  }) async {
    _validateFilter(filter);

    throw UnimplementedError();
  }

  // Validators

  void _validateId(int id) {
    if (id <= 0) {
      throw const WatchHistoryIdInvalidException();
    }
  }

  void _validateFilter(WatchHistoryQueryFilter filter) {
    if (filter.limit != null && filter.limit! <= 0) {
      throw const FilterLimitException();
    }

    if (filter.offset != null && filter.offset! < 0) {
      throw const FilterOffsetException();
    }
  }

  void _validateEntity(WatchHistoryModel model) {
    if (model.videoId == null) {
      throw const WatchHistoryVideoRequiredException();
    }

    if (model.userId == null) {
      throw const WatchHistoryUserRequiredException();
    }

  }
}
