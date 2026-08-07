import 'package:bloc/bloc.dart';
import 'package:baladeston/data/watch_history/filter/watch_history_query_filter.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';

// -----------------------------------------------------------------------------
// UseCases
// -----------------------------------------------------------------------------
import 'package:baladeston/domain/watch_history/usecase/create_watch_history/create_watch_history_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/update_watch_history_by_id/update_watch_history_by_id_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/update_watch_history_by_filter/update_watch_history_by_filter_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/get_watch_history_by_id/get_watch_history_by_id_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/get_watch_history_by_filter/get_watch_history_by_filter_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/delete_watch_history_by_id/delete_watch_history_by_id_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/delete_watch_history_by_filter/delete_watch_history_by_filter_usecase.dart';
import 'package:baladeston/domain/watch_history/usecase/count_watch_history/count_watch_history_usecase.dart';

import 'watch_history_state.dart';

class WatchHistoryCubit extends Cubit<WatchHistoryState> {
  // ---------------------------------------------------------------------------
  // UseCases
  // ---------------------------------------------------------------------------
  final CreateWatchHistoryUseCase _createUseCase;
  final UpdateWatchHistoryByIdUseCase _updateByIdUseCase;
  final UpdateWatchHistoryByFilterUseCase _updateByFilterUseCase;
  final GetWatchHistoryByIdUseCase _getByIdUseCase;
  final GetWatchHistoryByFilterUseCase _getByFilterUseCase;
  final DeleteWatchHistoryByIdUseCase _deleteByIdUseCase;
  final DeleteWatchHistoryByFilterUseCase _deleteByFilterUseCase;
  final CountWatchHistoryUseCase _countUseCase;

  /// Cache last UI list filter (VIEW filter only)
  WatchHistoryQueryFilter? _lastFilter;

  WatchHistoryCubit({
    required CreateWatchHistoryUseCase createUseCase,
    required UpdateWatchHistoryByIdUseCase updateByIdUseCase,
    required UpdateWatchHistoryByFilterUseCase updateByFilterUseCase,
    required GetWatchHistoryByIdUseCase getByIdUseCase,
    required GetWatchHistoryByFilterUseCase getByFilterUseCase,
    required DeleteWatchHistoryByIdUseCase deleteByIdUseCase,
    required DeleteWatchHistoryByFilterUseCase deleteByFilterUseCase,
    required CountWatchHistoryUseCase countUseCase,
  })  : _createUseCase = createUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _countUseCase = countUseCase,
        super(const WatchHistoryState.initial());

  // ---------------------------------------------------------------------------
  // Load list (VIEW FILTER)
  // ---------------------------------------------------------------------------

  Future<void> loadWatchHistories({
    WatchHistoryQueryFilter? filter,
  }) async {
    emit(const WatchHistoryState.fetchingMultiWatchHistory());

    final effectiveFilter =
        filter ?? _lastFilter ?? WatchHistoryQueryFilter();

    _lastFilter = effectiveFilter;

    final countResult = await _countUseCase(
      filter: effectiveFilter,
    );

    final listResult = await _getByFilterUseCase(
      filter: effectiveFilter,
    );

    listResult.when(
      success: (items) {
        countResult.when(
          success: (count) {
            emit(
              WatchHistoryState.fetchedMultiWatchHistory(
                watchHistory: items,
                count: count,
              ),
            );
          },
          failure: (failure) {
            emit(
              WatchHistoryState.failure(
                failure: failure,
                error: WatchHistoryStateError.countFailed,
              ),
            );
          },
        );
      },
      failure: (failure) {
        emit(
          WatchHistoryState.failure(
            failure: failure,
            error: WatchHistoryStateError.fetchFailed,
          ),
        );
      },
    );
  }

  Future<void> refreshFilter() async {
    await loadWatchHistories(filter: _lastFilter);
  }

  // ---------------------------------------------------------------------------
  // Fetch single
  // ---------------------------------------------------------------------------

  Future<void> loadWatchHistoryById(int id) async {
    emit(const WatchHistoryState.fetchingSingleWatchHistory());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (item) {
        emit(
          WatchHistoryState.fetchedSingleWatchHistory(
            watchHistory: item,
          ),
        );
      },
      failure: (failure) {
        emit(
          WatchHistoryState.failure(
            failure: failure,
            error: WatchHistoryStateError.fetchFailed,
          ),
        );
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Create
  // ---------------------------------------------------------------------------

  Future<void> createWatchHistory(WatchHistoryEntity entity) async {
    emit(const WatchHistoryState.creating());

    final result = await _createUseCase(
      watchHistory: entity,
    );

    result.when(
      success: (item) async {
        emit(WatchHistoryState.created(watchHistory: item));
        await refreshFilter();
      },
      failure: (failure) {
        emit(
          WatchHistoryState.failure(
            failure: failure,
            error: WatchHistoryStateError.createFailed,
          ),
        );
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Update by ID
  // ---------------------------------------------------------------------------

  Future<void> updateWatchHistoryById({
    required int id,
    required WatchHistoryEntity entity,
  }) async {
    emit(const WatchHistoryState.updatingWatchHistory());

    final result = await _updateByIdUseCase(
      id: id,
      watchHistory: entity,
    );

    result.when(
      success: (item) async {
        emit(
          WatchHistoryState.updatedSingleWatchHistory(
            watchHistory: item,
          ),
        );
        await refreshFilter();
      },
      failure: (failure) {
        emit(
          WatchHistoryState.failure(
            failure: failure,
            error: WatchHistoryStateError.updateFailed,
          ),
        );
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Update by FILTER (ACTION FILTER) — ✅ count FIRST
  // ---------------------------------------------------------------------------

  Future<void> updateWatchHistoryByFilter({
    required WatchHistoryQueryFilter filter,
    required WatchHistoryEntity entity,
  }) async {
    emit(const WatchHistoryState.updatingWatchHistory());

    final countResult = await _countUseCase(filter: filter);

    countResult.when(
      success: (affectedCount) async {
        final updateResult = await _updateByFilterUseCase(
          filter: filter,
          watchHistory: entity,
        );

        updateResult.when(
          success: (items) async {
            emit(
              WatchHistoryState.updatedMultiWatchHistory(
                watchHistory: items,
                count: affectedCount,
              ),
            );
            await refreshFilter();
          },
          failure: (failure) {
            emit(
              WatchHistoryState.failure(
                failure: failure,
                error: WatchHistoryStateError.updateFailed,
              ),
            );
          },
        );
      },
      failure: (failure) {
        emit(
          WatchHistoryState.failure(
            failure: failure,
            error: WatchHistoryStateError.countFailed,
          ),
        );
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Delete by ID
  // ---------------------------------------------------------------------------

  Future<void> deleteWatchHistoryById(int id) async {
    emit(const WatchHistoryState.deleting());

    final result = await _deleteByIdUseCase(id: id);

    result.when(
      success: (_) async {
        emit(
          WatchHistoryState.deletedSingleWatchHistory(
            id: id,
          ),
        );
        await refreshFilter();
      },
      failure: (failure) {
        emit(
          WatchHistoryState.failure(
            failure: failure,
            error: WatchHistoryStateError.deleteFailed,
          ),
        );
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Delete by FILTER (ACTION FILTER) — ✅ count FIRST
  // ---------------------------------------------------------------------------

  Future<void> deleteWatchHistoryByFilter(
      WatchHistoryQueryFilter filter,
      ) async {
    emit(const WatchHistoryState.deleting());

    final countResult = await _countUseCase(filter: filter);

    countResult.when(
      success: (affectedCount) async {
        final deleteResult = await _deleteByFilterUseCase(
          filter: filter,
        );

        deleteResult.when(
          success: (ids) async {
            emit(
              WatchHistoryState.deletedMultiWatchHistory(
                ids: ids,
                count: affectedCount,
              ),
            );
            await refreshFilter();
          },
          failure: (failure) {
            emit(
              WatchHistoryState.failure(
                failure: failure,
                error: WatchHistoryStateError.deleteFailed,
              ),
            );
          },
        );
      },
      failure: (failure) {
        emit(
          WatchHistoryState.failure(
            failure: failure,
            error: WatchHistoryStateError.countFailed,
          ),
        );
      },
    );
  }
}
