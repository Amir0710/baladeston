import 'package:bloc/bloc.dart';

import 'favorite_state.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';

// UseCases
import 'package:baladeston/domain/favorite/usecase/cretate_favorite/create_favorite_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/update_favorite_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/get_favorite_by_id/get_favorite_by_id_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/get_favorite_by_filter/get_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/delete_favorite_by_id/delete_favorite_by_id_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/delete_favorite_by_filter/delete_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/count_favorite/count_favorite_usecase.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final CreateFavoriteUseCase _createUseCase;
  final UpdateFavoriteUseCase _updateUseCase;
  final GetFavoriteByIdUseCase _getByIdUseCase;
  final GetFavoriteByFilterUseCase _getByFilterUseCase;
  final DeleteFavoriteByIdUseCase _deleteByIdUseCase;
  final DeleteFavoriteByFilterUseCase _deleteByFilterUseCase;
  final CountFavoriteUseCase _countUseCase;

  FavoriteCubit({
    required CreateFavoriteUseCase createUseCase,
    required UpdateFavoriteUseCase updateUseCase,
    required GetFavoriteByIdUseCase getByIdUseCase,
    required GetFavoriteByFilterUseCase getByFilterUseCase,
    required DeleteFavoriteByIdUseCase deleteByIdUseCase,
    required DeleteFavoriteByFilterUseCase deleteByFilterUseCase,
    required CountFavoriteUseCase countUseCase,
  })  : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _countUseCase = countUseCase,
        super(const FavoriteState.initial());

  // ---------------------------------------------------------------------------
  // Load list
  // ---------------------------------------------------------------------------
  Future<void> loadFavorites({
    required FavoriteQueryFilter filter,
  }) async {
    emit(const FavoriteState.fetchingList());

    final listResult = await _getByFilterUseCase(filter: filter);

    await listResult.when(
      success: (favorites) async {
        final countResult = await _countUseCase(filter: filter);

        final count = countResult.when(
          success: (value) => value,
          failure: (_) => favorites.length, // fallback امن
        );

        emit(FavoriteState.successListLoaded(
          favorites: favorites,
          count: count,
        ));
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileLoadingList,
          message: 'خطا در دریافت لیست علاقه‌مندی‌ها',
        ));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Load by id
  // ---------------------------------------------------------------------------
  Future<void> loadFavoriteById({
    required int id,
  }) async {
    emit(const FavoriteState.fetchingSingle());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (favorite) {
        emit(FavoriteState.successSingleLoaded(favorite: favorite));
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileLoadingSingle,
          message: 'خطا در دریافت اطلاعات علاقه‌مندی',
        ));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Create
  // ---------------------------------------------------------------------------
  Future<void> createFavorite({
    required FavoriteEntity entity,
    required FavoriteQueryFilter refreshFilter,
  }) async {
    emit(const FavoriteState.creating());

    final result = await _createUseCase(favorite: entity);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileCreating,
          message: 'خطا در افزودن به علاقه‌مندی‌ها',
        ));
      },
    );

    if (shouldRefresh) {
      await loadFavorites(filter: refreshFilter);
    }
  }

  // ---------------------------------------------------------------------------
  // Update
  // ---------------------------------------------------------------------------
  Future<void> updateFavorite({
    required FavoriteEntity entity,
    required FavoriteQueryFilter refreshFilter,
  }) async {
    emit(const FavoriteState.updating());

    final result = await _updateUseCase(favorite: entity);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileUpdating,
          message: 'خطا در بروزرسانی علاقه‌مندی',
        ));
      },
    );

    if (shouldRefresh) {
      await loadFavorites(filter: refreshFilter);
    }
  }

  // ---------------------------------------------------------------------------
  // Delete by id
  // ---------------------------------------------------------------------------
  Future<void> removeFavoriteById({
    required int id,
    required FavoriteQueryFilter refreshFilter,
  }) async {
    emit(const FavoriteState.deletingById());

    final result = await _deleteByIdUseCase(id: id);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileDeletingById,
          message: 'خطا در حذف علاقه‌مندی',
        ));
      },
    );

    if (shouldRefresh) {
      await loadFavorites(filter: refreshFilter);
    }
  }

  // ---------------------------------------------------------------------------
  // Delete by filter
  // ---------------------------------------------------------------------------
  Future<void> removeFavoritesByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteQueryFilter refreshFilter,
  }) async {
    emit(const FavoriteState.deletingByFilter());

    final result = await _deleteByFilterUseCase(filter: filter);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileDeletingByFilter,
          message: 'خطا در حذف گروهی علاقه‌مندی‌ها',
        ));
      },
    );

    if (shouldRefresh) {
      await loadFavorites(filter: refreshFilter);
    }
  }
}
