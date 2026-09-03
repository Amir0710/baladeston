import 'package:baladeston/domain/reaction/usecase/create_reaction/create_reaction_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/update_reaction_by_id/update_reaction_by_id_usecase.dart';
import 'package:bloc/bloc.dart';

import 'reaction_state.dart';
import 'package:baladeston/domain/reaction/entity/reaction/reaction_entity.dart';
import 'package:baladeston/data/reaction/filter/reaction/reaction_query_filter.dart';

/* ------------------------------ USE CASES ------------------------------ */
import 'package:baladeston/domain/reaction/usecase/update_reaction_by_filter/update_reaction_by_filter_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/get_reaction_by_id/get_reaction_by_id_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/get_reaction_by_filter/get_reaction_by_filter_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/delete_reaction_by_id/delete_reaction_by_id_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/delete_reaction_by_filter/delete_reaction_by_filter_usecase.dart';
import 'package:baladeston/domain/reaction/usecase/count_reaction/count_reaction_usecase.dart';

class ReactionCubit extends Cubit<ReactionState> {
  final CreateReactionUseCase createUseCase;
  final UpdateReactionByIdUseCase updateByIdUseCase;
  final UpdateReactionByFilterUseCase updateByFilterUseCase;
  final GetReactionByIdUseCase getByIdUseCase;
  final GetReactionByFilterUseCase getByFilterUseCase;
  final DeleteReactionByIdUseCase deleteByIdUseCase;
  final DeleteReactionByFilterUseCase deleteByFilterUseCase;
  final CountReactionUseCase countUseCase;

  ReactionCubit({
    required this.createUseCase,
    required this.updateByIdUseCase,
    required this.updateByFilterUseCase,
    required this.getByIdUseCase,
    required this.getByFilterUseCase,
    required this.deleteByIdUseCase,
    required this.deleteByFilterUseCase,
    required this.countUseCase,
  }) : super(const ReactionState.initial());

  /* -------------------------------------------------------------------------- */
  /*                                    FETCH                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> loadReactions({
    required ReactionQueryFilter filter,
  }) async {
    emit(const ReactionState.fetchingList());

    final listResult = await getByFilterUseCase(filter: filter);

    await listResult.when(
      success: (reactions) async {
        final countResult = await countUseCase(filter: filter);

        final count = countResult.when(
          success: (value) => value,
          failure: (_) => reactions.length, // fallback امن
        );

        emit(
          ReactionState.successListLoaded(
            reactions: reactions,
            count: count,
          ),
        );
      },
      failure: (_) {
        emit(const ReactionState.error(
          error: ReactionStateError.errorWhileLoadingList,
          message: 'خطا در دریافت لیست واکنش‌ها',
        ));
      },
    );
  }

  Future<void> loadReactionById({
    required int id,
  }) async {
    emit(const ReactionState.fetchingSingle());

    final result = await getByIdUseCase(id: id);

    result.when(
      success: (reaction) {
        emit(ReactionState.successSingleLoaded(reaction: reaction));
      },
      failure: (_) {
        emit(const ReactionState.error(
          error: ReactionStateError.errorWhileLoadingSingle,
          message: 'خطا در دریافت اطلاعات واکنش',
        ));
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   CREATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> createReaction({
    required ReactionEntity entity,
    required ReactionQueryFilter refreshFilter,
  }) async {
    emit(const ReactionState.creating());

    final result = await createUseCase(reaction: entity);

    result.when(
      success: (_) async {
        await loadReactions(filter: refreshFilter);
      },
      failure: (_) {
        emit(const ReactionState.error(
          error: ReactionStateError.errorWhileCreating,
          message: 'خطا در افزودن واکنش',
        ));
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   UPDATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> updateReactionById({
    required int id,
    required ReactionEntity entity,
    required ReactionQueryFilter refreshFilter,
  }) async {
    emit(const ReactionState.updating());

    final result = await updateByIdUseCase(
      id: id,
      reaction: entity,
    );

    result.when(
      success: (_) async {
        await loadReactions(filter: refreshFilter);
      },
      failure: (_) {
        emit(const ReactionState.error(
          error: ReactionStateError.errorWhileUpdating,
          message: 'خطا در بروزرسانی واکنش',
        ));
      },
    );
  }

  Future<void> updateReactionByFilter({
    required ReactionQueryFilter filter,
    required ReactionEntity entity,
    required ReactionQueryFilter refreshFilter,
  }) async {
    emit(const ReactionState.updating());

    final result = await updateByFilterUseCase(
      filter: filter,
      reaction: entity,
    );

    result.when(
      success: (_) async {
        await loadReactions(filter: refreshFilter);
      },
      failure: (_) {
        emit(const ReactionState.error(
          error: ReactionStateError.errorWhileUpdating,
          message: 'خطا در بروزرسانی گروهی واکنش‌ها',
        ));
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   DELETE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> removeReactionById({
    required int id,
    required ReactionQueryFilter refreshFilter,
  }) async {
    emit(const ReactionState.deletingById());

    final result = await deleteByIdUseCase(id: id);

    result.when(
      success: (_) async {
        await loadReactions(filter: refreshFilter);
      },
      failure: (_) {
        emit(const ReactionState.error(
          error: ReactionStateError.errorWhileDeletingById,
          message: 'خطا در حذف واکنش',
        ));
      },
    );
  }

  Future<void> removeReactionsByFilter({
    required ReactionQueryFilter filter,
    required ReactionQueryFilter refreshFilter,
  }) async {
    emit(const ReactionState.deletingByFilter());

    final result = await deleteByFilterUseCase(filter: filter);

    result.when(
      success: (_) async {
        await loadReactions(filter: refreshFilter);
      },
      failure: (_) {
        emit(const ReactionState.error(
          error: ReactionStateError.errorWhileDeletingByFilter,
          message: 'خطا در حذف گروهی واکنش‌ها',
        ));
      },
    );
  }
}
