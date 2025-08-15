import 'package:baladeston/domain/usecase/watch_history/create_watch_history_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/dalete_watch_history_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/dalete_watch_history_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/get_last_position_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/get_last_position_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/watch_history/update_last_position_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
import 'package:baladeston/domain/filters/watch_history_query_filter.dart';

// UseCases
import 'package:baladeston/domain/usecase/watch_history/count_watch_history_usecase.dart';

import 'watch_history_state.dart';

class WatchHistoryCubit extends Cubit<WatchHistoryState> {
  final CountWatchHistoryUseCase _countUseCase;
  final GetWatchHistoryByFilterUseCase _getByFilterUseCase;
  final GetWatchHistoryByIdUseCase _getByIdUseCase;
  final CreateWatchHistoryUseCase _createUseCase;
  final UpdateWatchHistoryUseCase _updateUseCase;
  final DeleteWatchHistoryByIdUseCase _deleteByIdUseCase;
  final DeleteWatchHistoryByFilterUseCase _deleteByFilterUseCase;

  WatchHistoryQueryFilter? _lastFilter;

  WatchHistoryCubit({
    required CountWatchHistoryUseCase countUseCase,
    required GetWatchHistoryByFilterUseCase getByFilterUseCase,
    required GetWatchHistoryByIdUseCase getByIdUseCase,
    required CreateWatchHistoryUseCase createUseCase,
    required UpdateWatchHistoryUseCase updateUseCase,
    required DeleteWatchHistoryByIdUseCase deleteByIdUseCase,
    required DeleteWatchHistoryByFilterUseCase deleteByFilterUseCase,
  })  : _countUseCase = countUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        super(const WatchHistoryState.initial());

  Future<void> loadWatchHistories([WatchHistoryQueryFilter? filter]) async {
    emit(const WatchHistoryState.loading());
    try {
      final f = filter ?? WatchHistoryQueryFilter();
      _lastFilter = f;
      final items = await _getByFilterUseCase(filter: f);
      final count = await _countUseCase(filter: f);
      emit(WatchHistoryState.success(watchHistory: items ?? [], count: count));
    } catch (e) {
      emit(WatchHistoryState.failure(message: e.toString()));
    }
  }

  Future<void> refreshFilter() async {
    await loadWatchHistories(_lastFilter);
  }

  Future<void> loadWatchHistoryById(int id) async {
    emit(const WatchHistoryState.loading());
    try {
      final item = await _getByIdUseCase(id: id);
      emit(WatchHistoryState.success(
        watchHistory: item != null ? [item] : [],
        count: item != null ? 1 : 0,
      ));
    } catch (e) {
      emit(WatchHistoryState.failure(message: e.toString()));
    }
  }

  Future<void> createWatchHistory(WatchHistoryEntity entity) async {
    emit(const WatchHistoryState.loading());
    try {
      await _createUseCase(watchHistory: entity);
      await refreshFilter();
    } catch (e) {
      emit(WatchHistoryState.failure(message: e.toString()));
    }
  }

  Future<void> updateLastPosition(WatchHistoryEntity entity) async {
    emit(const WatchHistoryState.loading());
    try {
      await _updateUseCase(watchHistory: entity);
      await refreshFilter();
    } catch (e) {
      emit(WatchHistoryState.failure(message: e.toString()));
    }
  }

  Future<void> deleteWatchHistoryById(int id) async {
    emit(const WatchHistoryState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await refreshFilter();
    } catch (e) {
      emit(WatchHistoryState.failure(message: e.toString()));
    }
  }

  Future<void> deleteWatchHistoryByFilter(
      WatchHistoryQueryFilter filter) async {
    emit(const WatchHistoryState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await refreshFilter();
    } catch (e) {
      emit(WatchHistoryState.failure(message: e.toString()));
    }
  }
}
