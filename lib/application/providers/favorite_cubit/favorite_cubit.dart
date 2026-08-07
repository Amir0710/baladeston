import 'package:baladeston/domain/favorite/usecase/create_favorite/create_favorite_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/update_favorite_by_id/update_favorite_by_id_usecase.dart.dart';
import 'package:bloc/bloc.dart';

import 'favorite_state.dart';
import 'package:baladeston/domain/favorite/entity/favorite_entity.dart';
import 'package:baladeston/data/favorite/filter/favorite_query_filter.dart';

/* ------------------------------ USE CASES ------------------------------ */
import 'package:baladeston/domain/favorite/usecase/update_favorite_by_filter/update_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/get_favorite_by_id/get_favorite_by_id_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/get_favorite_by_filter/get_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/delete_favorite_by_id/delete_favorite_by_id_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/delete_favorite_by_filter/delete_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/favorite/usecase/count_favorite/count_favorite_usecase.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  final CreateFavoriteUseCase createUseCase;
  final UpdateFavoriteByIdUseCase updateByIdUseCase;
  final UpdateFavoriteByFilterUseCase updateByFilterUseCase;
  final GetFavoriteByIdUseCase getByIdUseCase;
  final GetFavoriteByFilterUseCase getByFilterUseCase;
  final DeleteFavoriteByIdUseCase deleteByIdUseCase;
  final DeleteFavoriteByFilterUseCase deleteByFilterUseCase;
  final CountFavoriteUseCase countUseCase;

  FavoriteCubit({
    required this.createUseCase,
    required this.updateByIdUseCase,
    required this.updateByFilterUseCase,
    required this.getByIdUseCase,
    required this.getByFilterUseCase,
    required this.deleteByIdUseCase,
    required this.deleteByFilterUseCase,
    required this.countUseCase,
  }) : super(const FavoriteState.initial());

  /* -------------------------------------------------------------------------- */
  /*                                    FETCH                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> loadFavorites({
    required FavoriteQueryFilter filter,
  }) async {
    emit(const FavoriteState.fetchingList());

    final listResult = await getByFilterUseCase(filter: filter);

    await listResult.when(
      success: (favorites) async {
        final countResult = await countUseCase(filter: filter);

        final count = countResult.when(
          success: (value) => value,
          failure: (_) => favorites.length, // fallback امن
        );

        emit(
          FavoriteState.successListLoaded(
            favorites: favorites,
            count: count,
          ),
        );
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileLoadingList,
          message: 'خطا در دریافت لیست علاقه‌مندی‌ها',
        ));
      },
    );
  }

  Future<void> loadFavoriteById({
    required int id,
  }) async {
    emit(const FavoriteState.fetchingSingle());

    final result = await getByIdUseCase(id: id);

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

  /* -------------------------------------------------------------------------- */
  /*                                   CREATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> createFavorite({
    required FavoriteEntity entity,
    required FavoriteQueryFilter refreshFilter,
  }) async {
    emit(const FavoriteState.creating());

    final result = await createUseCase(favorite: entity);

    result.when(
      success: (_) async {
        await loadFavorites(filter: refreshFilter);
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileCreating,
          message: 'خطا در افزودن به علاقه‌مندی‌ها',
        ));
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   UPDATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> updateFavoriteById({
    required int id,
    required FavoriteEntity entity,
    required FavoriteQueryFilter refreshFilter,
  }) async {
    emit(const FavoriteState.updating());

    final result = await updateByIdUseCase(
      id: id,
      favorite: entity,
    );

    result.when(
      success: (_) async {
        await loadFavorites(filter: refreshFilter);
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileUpdating,
          message: 'خطا در بروزرسانی علاقه‌مندی',
        ));
      },
    );
  }

  Future<void> updateFavoriteByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteEntity entity,
    required FavoriteQueryFilter refreshFilter,
  }) async {
    emit(const FavoriteState.updating());

    final result = await updateByFilterUseCase(
      filter: filter,
      favorite: entity,
    );

    result.when(
      success: (_) async {
        await loadFavorites(filter: refreshFilter);
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileUpdating,
          message: 'خطا در بروزرسانی گروهی علاقه‌مندی‌ها',
        ));
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   DELETE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> removeFavoriteById({
    required int id,
    required FavoriteQueryFilter refreshFilter,
  }) async {
    emit(const FavoriteState.deletingById());

    final result = await deleteByIdUseCase(id: id);

    result.when(
      success: (_) async {
        await loadFavorites(filter: refreshFilter);
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileDeletingById,
          message: 'خطا در حذف علاقه‌مندی',
        ));
      },
    );
  }

  Future<void> removeFavoritesByFilter({
    required FavoriteQueryFilter filter,
    required FavoriteQueryFilter refreshFilter,
  }) async {
    emit(const FavoriteState.deletingByFilter());

    final result = await deleteByFilterUseCase(filter: filter);

    result.when(
      success: (_) async {
        await loadFavorites(filter: refreshFilter);
      },
      failure: (_) {
        emit(const FavoriteState.error(
          error: FavoriteStateError.errorWhileDeletingByFilter,
          message: 'خطا در حذف گروهی علاقه‌مندی‌ها',
        ));
      },
    );
  }
}
