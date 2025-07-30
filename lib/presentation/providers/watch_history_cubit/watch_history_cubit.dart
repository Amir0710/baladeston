  import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';
  import 'package:baladeston/domain/filters/watch_history_query_filter.dart';
  import 'package:baladeston/domain/usecase/watch_history/create_watch_history_usecase.dart';
  import 'package:baladeston/domain/usecase/watch_history/dalete_watch_history_list_usecase.dart';
  import 'package:baladeston/domain/usecase/watch_history/delete_all_history_usecase.dart';
  import 'package:baladeston/domain/usecase/watch_history/get_last_position_usecase.dart';
  import 'package:baladeston/domain/usecase/watch_history/update_last_position_usecase.dart';
  import 'package:baladeston/presentation/providers/watch_history_cubit/watch_history_state.dart';
  import 'package:bloc/bloc.dart';


  class WatchHistoryCubit extends Cubit<WatchHistoryState> {
    final CreateWatchHistory createWatchHistory;
    final DeleteAllHistory deleteAllHistory;
    final DeleteWatchHistoryList deleteWatchHistoryList;
    final GetLastPosition getLastPosition;
    final UpdateLastPosition updateLastPosition;

    WatchHistoryCubit({
      required this.createWatchHistory,
      required this.deleteAllHistory,
      required this.deleteWatchHistoryList,
      required this.getLastPosition,
      required this.updateLastPosition,
    }) : super(const WatchHistoryState.initial());

    Future<void> create(WatchHistoryEntity entity) async {
      emit(const WatchHistoryState.loading());
      try {
        await createWatchHistory(watchHistory: entity);
        emit(const WatchHistoryState.success('ایتم ثبت شد.'));
      } catch (e) {
        emit(WatchHistoryState.error(e.toString()));
      }
    }

    Future<void> deleteAll() async {
      emit(const WatchHistoryState.loading());
      try {
        await deleteAllHistory();
        emit(const WatchHistoryState.success('همه آیتم‌ها حذف شد.'));
      } catch (e) {
        emit(WatchHistoryState.error(e.toString()));
      }
    }

    Future<void> deleteList(WatchHistoryQueryFilter filter) async {
      emit(const WatchHistoryState.loading());
      try {
        await deleteWatchHistoryList(filter: filter);
        emit(const WatchHistoryState.success('آیتم‌ها با فیلتر حذف شد.'));
      } catch (e) {
        emit(WatchHistoryState.error(e.toString()));
      }
    }

    Future<void> fetchLastPositions(WatchHistoryQueryFilter filter) async {
      emit(const WatchHistoryState.loading());
      try {
        final result = await getLastPosition(filter);
        emit(WatchHistoryState.lastPositionsLoaded(result ?? []));
      } catch (e) {
        emit(WatchHistoryState.error(e.toString()));
      }
    }

    Future<void> updatePosition(WatchHistoryEntity entity) async {
      emit(const WatchHistoryState.loading());
      try {
        await updateLastPosition(entity);
        emit(const WatchHistoryState.success('آخرین موقعیت بروزرسانی شد.'));
      } catch (e) {
        emit(WatchHistoryState.error(e.toString()));
      }
    }
  }
