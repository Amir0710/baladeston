import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/usecase/favorite/count_favorite_usecase.dart';

// Use Cases
import 'package:baladeston/domain/usecase/favorite/create_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/get_favotite_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/update_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/get_favorite_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/delete_favorite_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/delete_favorite_by_filter_usecase.dart';

// State
import 'package:baladeston/presentation/providers/favorite_cubit/favorite_state.dart';

import 'package:bloc/bloc.dart';

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

  /// بارگذاری علاقه‌مندی‌ها بر اساس فیلتر
  Future<void> loadFavorites(FavoriteQueryFilter filter) async {
    emit(const FavoriteState.loading());
    try {
      final favorites = await _getByFilterUseCase(filter: filter) ?? [];
      final count = await _countUseCase(filter: filter);
      emit(FavoriteState.success(favorites: favorites, count: count));
    } catch (e) {
      emit(FavoriteState.failure(message: e.toString()));
    }
  }

  /// بارگذاری یک علاقه‌مندی توسط ID
  Future<void> loadFavoriteById(int id) async {
    emit(const FavoriteState.loading());
    try {
      final favorite = await _getByIdUseCase(id: id);
      if (favorite != null) {
        emit(FavoriteState.success(favorites: [favorite], count: 1));
      } else {
        emit(const FavoriteState.failure(message: 'Favorite not found'));
      }
    } catch (e) {
      emit(FavoriteState.failure(message: e.toString()));
    }
  }

  /// ایجاد علاقه‌مندی
  Future<void> create(FavoriteEntity entity, FavoriteQueryFilter refreshFilter) async {
    emit(const FavoriteState.loading());
    try {
      await _createUseCase(favorite: entity);
      await loadFavorites(refreshFilter);
    } catch (e) {
      emit(FavoriteState.failure(message: e.toString()));
    }
  }

  /// بروزرسانی علاقه‌مندی
  Future<void> update(FavoriteEntity entity, FavoriteQueryFilter refreshFilter) async {
    emit(const FavoriteState.loading());
    try {
      await _updateUseCase(favorite: entity);
      await loadFavorites(refreshFilter);
    } catch (e) {
      emit(FavoriteState.failure(message: e.toString()));
    }
  }

  /// حذف علاقه‌مندی بر اساس ID
  Future<void> removeById(int id, FavoriteQueryFilter refreshFilter) async {
    emit(const FavoriteState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await loadFavorites(refreshFilter);
    } catch (e) {
      emit(FavoriteState.failure(message: e.toString()));
    }
  }

  /// حذف علاقه‌مندی‌ها بر اساس فیلتر
  Future<void> removeByFilter(FavoriteQueryFilter filter, FavoriteQueryFilter refreshFilter) async {
    emit(const FavoriteState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await loadFavorites(refreshFilter);
    } catch (e) {
      emit(FavoriteState.failure(message: e.toString()));
    }
  }
}
