import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/data/discount/filter/discount_query_filter.dart';

/* ------------------------------ USE CASES ------------------------------ */
import 'package:baladeston/domain/discount/usecase/create_discount/create_discount_usecase.dart';
import 'package:baladeston/domain/discount/usecase/get_discount_by_filter/get_discount_by_filter_usecase.dart';
import 'package:baladeston/domain/discount/usecase/get_discount_by_id/get_discount_by_id_usecase.dart';
import 'package:baladeston/domain/discount/usecase/update_discount_by_id/update_discount_by_id_usecase.dart';
import 'package:baladeston/domain/discount/usecase/update_discount_by_filter/update_discount_by_filter_usecase.dart';
import 'package:baladeston/domain/discount/usecase/delete_discount_by_id/delete_discount_by_id_usecase.dart';
import 'package:baladeston/domain/discount/usecase/delete_discount_by_filter/delete_discount_by_filter_usecase.dart';
import 'package:baladeston/domain/discount/usecase/count_discount/count_discount_usecase.dart';

import 'discount_state.dart';

class DiscountCubit extends Cubit<DiscountState> {
  /* -------------------------------------------------------------------------- */
  /*                                   USE CASES                                */
  /* -------------------------------------------------------------------------- */
  final CreateDiscountUseCase createUseCase;
  final UpdateDiscountByIdUseCase updateByIdUseCase;
  final UpdateDiscountByFilterUseCase updateByFilterUseCase;
  final DeleteDiscountByIdUseCase deleteByIdUseCase;
  final DeleteDiscountByFilterUseCase deleteByFilterUseCase;
  final GetDiscountByIdUseCase getByIdUseCase;
  final GetDiscountByFilterUseCase getByFilterUseCase;
  final CountDiscountUseCase countUseCase;

  DiscountCubit({
    required this.createUseCase,
    required this.updateByIdUseCase,
    required this.updateByFilterUseCase,
    required this.deleteByIdUseCase,
    required this.deleteByFilterUseCase,
    required this.getByIdUseCase,
    required this.getByFilterUseCase,
    required this.countUseCase,
  }) : super(const DiscountState.initial());

  /* -------------------------------------------------------------------------- */
  /*                                    FETCH                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> fetchList({
    required DiscountQueryFilter filter,
  }) async {
    emit(const DiscountState.fetchingList());

    final result = await getByFilterUseCase(filter: filter);

    result.when(
      success: (discounts) async {
        final countResult = await countUseCase(filter: filter);

        countResult.when(
          success: (count) {
            emit(
              DiscountState.successListLoaded(
                discounts: discounts,
                count: count,
              ),
            );
          },
          failure: (failure) {
            emit(
              DiscountState.error(
                error: DiscountStateError.errorWhileLoadingList,
                message: failure.message,
              ),
            );
          },
        );
      },
      failure: (failure) {
        emit(
          DiscountState.error(
            error: DiscountStateError.errorWhileLoadingList,
            message: failure.message,
          ),
        );
      },
    );
  }

  Future<void> fetchSingle({
    required int id,
  }) async {
    emit(const DiscountState.fetchingSingle());

    final result = await getByIdUseCase(id: id);

    result.when(
      success: (discount) {
        emit(
          DiscountState.successSingleLoaded(discount: discount),
        );
      },
      failure: (failure) {
        emit(
          DiscountState.error(
            error: DiscountStateError.errorWhileLoadingSingle,
            message: failure.message,
          ),
        );
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   CREATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> create({
    required DiscountEntity discount,
  }) async {
    emit(const DiscountState.creating());

    final result = await createUseCase(discount: discount);

    result.when(
      success: (_) {
        emit(const DiscountState.fetchingList());
      },
      failure: (failure) {
        emit(
          DiscountState.error(
            error: DiscountStateError.errorWhileCreating,
            message: failure.message,
          ),
        );
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   UPDATE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> updateById({
    required int id,
    required DiscountEntity discount,
  }) async {
    emit(const DiscountState.editing());

    final result = await updateByIdUseCase(
      id: id,
      discount: discount,
    );

    result.when(
      success: (updatedDiscount) {
        emit(
          DiscountState.successSingleLoaded(
            discount: updatedDiscount,
          ),
        );
      },
      failure: (failure) {
        emit(
          DiscountState.error(
            error: DiscountStateError.errorWhileEditing,
            message: failure.message,
          ),
        );
      },
    );
  }

  Future<void> updateByFilter({
    required DiscountQueryFilter filter,
    required DiscountEntity discount,
  }) async {
    emit(const DiscountState.editing());

    final result = await updateByFilterUseCase(
      filter: filter,
      discount: discount,
    );

    result.when(
      success: (_) {
        emit(const DiscountState.fetchingList());
      },
      failure: (failure) {
        emit(
          DiscountState.error(
            error: DiscountStateError.errorWhileEditing,
            message: failure.message,
          ),
        );
      },
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   DELETE                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> deleteById({
    required int id,
  }) async {
    emit(const DiscountState.deletingById());

    final result = await deleteByIdUseCase(id: id);

    result.when(
      success: (_) {
        emit(const DiscountState.fetchingList());
      },
      failure: (failure) {
        emit(
          DiscountState.error(
            error: DiscountStateError.errorWhileDeletingById,
            message: failure.message,
          ),
        );
      },
    );
  }

  Future<void> deleteByFilter({
    required DiscountQueryFilter filter,
  }) async {
    emit(const DiscountState.deletingByFilter());

    final result = await deleteByFilterUseCase(filter: filter);

    result.when(
      success: (_) {
        emit(const DiscountState.fetchingList());
      },
      failure: (failure) {
        emit(
          DiscountState.error(
            error: DiscountStateError.errorWhileDeletingByFilter,
            message: failure.message,
          ),
        );
      },
    );
  }
}
