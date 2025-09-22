import 'package:baladeston/data/datasources/remote/watch_history_remote_datasource/watch_history_api.dart';
import 'package:baladeston/data/mapper/watch_history_mapper.dart';
import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/filters/watch_history_query_filter.dart';
import 'package:baladeston/domain/repositories/watch_history_repository.dart';

class WatchHistoryRepositoryImplementation extends WatchHistoryRepository {
  final WatchHistoryApi _api;

  WatchHistoryRepositoryImplementation({required WatchHistoryApi api})
      : _api = api;

  @override
  Future<int> countWatchHistory(
      {required WatchHistoryQueryFilter filter}) async {
    try {
      return await _api.countWatchHistory(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<WatchHistoryEntity> createWatchHistory(
      {required WatchHistoryEntity watchHistory}) async {
    try {
      final model = watchHistory.toModel();
      final resultModel = await _api.createWatchHistory(watchHistory: model);
      return resultModel.toEntity();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteWatchHistoryByFilter(
      {required WatchHistoryQueryFilter filter}) async {
    try {
      return await _api.deleteWatchHistoryByFilter(filter: filter);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<void> deleteWatchHistoryById({required int id}) async {
    try {
      return await _api.deleteWatchHistoryById(id: id);
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<List<WatchHistoryEntity>?> getLastPositionByFilter(
      {required WatchHistoryQueryFilter filter}) async {
    try {
      final resultModel = await _api.getLastPositionByFilter(filter: filter);
      return resultModel?.map((m) => m.toEntity()).toList();
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<WatchHistoryEntity?> getLastPositionById({required int id}) async {
    try {
      final resultModel = await _api.getLastPositionById(id: id);
      return resultModel?.toEntity(); 
    } catch (e) {
      throw Exception('error $e');
    }
  }

  @override
  Future<WatchHistoryEntity> updateLastPosition(
      {required WatchHistoryEntity watchHistory}) async {
    try {
      final model = watchHistory.toModel();
      final resultModel = await _api.updateLastPosition(watchHistory: model);
      return resultModel.toEntity(); 
    } catch (e) {
      throw Exception('error $e');
    }
  }
}
