import 'package:baladeston/domain/entitys/favorite/favorite_entity.dart';
import 'package:baladeston/domain/filters/favorite_query_filter.dart';
import 'package:baladeston/domain/usecase/favorite/create_favorite_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/get_last_position_usecase.dart';
import 'package:baladeston/domain/usecase/favorite/toggle_favorite_usecase.dart';
import 'package:baladeston/presentation/providers/favorite_cubit/favorite_state.dart';
import 'package:bloc/bloc.dart';


class FavoriteCubit extends Cubit<FavoriteState> {
  final CreateFavorite createFavorite;
  final ToggleFavorite toggleFavorite;
  final GetLastPosition getLastPosition;

  FavoriteCubit({
    required this.createFavorite,
    required this.toggleFavorite,
    required this.getLastPosition,
  }) : super(const FavoriteState.initial());

  Future<void> create(FavoriteEntity entity) async {
    emit(const FavoriteState.loading());
    try {
      await createFavorite(favorite: entity);
      emit(const FavoriteState.success('آیتم به علاقه‌مندی‌ها اضافه شد.'));
    } catch (e) {
      emit(FavoriteState.error(e.toString()));
    }
  }

  Future<void> toggle(FavoriteEntity entity) async {
    emit(const FavoriteState.loading());
    try {
      await toggleFavorite(favorite: entity);
      emit(const FavoriteState.success('وضعیت علاقه‌مندی تغییر کرد.'));
    } catch (e) {
      emit(FavoriteState.error(e.toString()));
    }
  }

  Future<void> fetchLastPositions(FavoriteQueryFilter filter) async {
    emit(const FavoriteState.loading());
    try {
      final list = await getLastPosition(filter: filter);
      emit(FavoriteState.lastPositionsLoaded(list ?? []));
    } catch (e) {
      emit(FavoriteState.error(e.toString()));
    }
  }
}
