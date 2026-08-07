import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/domain/purchase/usecase/count_purchase/count_purchase_usecase.dart';
// UseCases
import 'package:baladeston/domain/purchase/usecase/create_purchase/create_purchase_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/delete_purchase_by_filter/delete_purchase_by_filter_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/delete_purchase_by_id/delete_purchase_by_id_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/get_purchase_by_filter/get_purchase_by_filter_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/get_purchase_by_id/get_purchase_by_id_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/update_purchase_by_filter/update_purchase_by_filter_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/update_purchase_by_id/update_purchase_by_id_usecase.dart';
import 'package:bloc/bloc.dart';

import 'purchase_state.dart';

class PurchaseCubit extends Cubit<PurchaseState> {
  final CreatePurchaseUseCase _createUseCase;
  final UpdatePurchaseByIdUseCase _updateByIdUseCase;
  final UpdatePurchaseByFilterUseCase _updateByFilterUseCase;
  final GetPurchaseByIdUseCase _getByIdUseCase;
  final GetPurchaseByFilterUseCase _getByFilterUseCase;
  final DeletePurchaseByIdUseCase _deleteByIdUseCase;
  final DeletePurchaseByFilterUseCase _deleteByFilterUseCase;
  final CountPurchaseUseCase _countUseCase;

  PurchaseCubit({
    required CreatePurchaseUseCase createUseCase,
    required UpdatePurchaseByIdUseCase updateByIdUseCase,
    required UpdatePurchaseByFilterUseCase updateByFilterUseCase,
    required GetPurchaseByIdUseCase getByIdUseCase,
    required GetPurchaseByFilterUseCase getByFilterUseCase,
    required DeletePurchaseByIdUseCase deleteByIdUseCase,
    required DeletePurchaseByFilterUseCase deleteByFilterUseCase,
    required CountPurchaseUseCase countUseCase,
  })  : _createUseCase = createUseCase,
        _updateByIdUseCase = updateByIdUseCase,
        _updateByFilterUseCase = updateByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _countUseCase = countUseCase,
        super(const PurchaseState.initial());

  /* -------------------------------------------------------------------------- */
  /*                                    List                                    */
  /* -------------------------------------------------------------------------- */

  Future<void> loadPurchases({
    required PurchaseQueryFilter filter,
  }) async {
    emit(const PurchaseState.fetchingList());

    final listResult = await _getByFilterUseCase(filter: filter);

    listResult.when(
      success: (purchases) async {
        int count = purchases.length;

        final countResult = await _countUseCase(filter: filter);
        countResult.when(
          success: (value) => count = value,
          failure: (_) {},
        );

        emit(
          PurchaseState.successListLoaded(
            purchases: purchases,
            count: count,
          ),
        );
      },
      failure: (_) => emit(
        const PurchaseState.error(
          error: PurchaseStateError.errorWhileLoadingList,
          message: 'خطا در دریافت لیست خریدها',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   Single                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> loadPurchaseById({required int id}) async {
    emit(const PurchaseState.fetchingSingle());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (purchase) =>
          emit(PurchaseState.successSingleLoaded(purchase: purchase)),
      failure: (_) => emit(
        const PurchaseState.error(
          error: PurchaseStateError.errorWhileLoadingSingle,
          message: 'خطا در دریافت اطلاعات خرید',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   Create                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> addPurchase({
    required PurchaseEntity purchase,
    required PurchaseQueryFilter refreshFilter,
  }) async {
    emit(const PurchaseState.creating());

    final result = await _createUseCase(purchase: purchase);

    result.when(
      success: (_) => loadPurchases(filter: refreshFilter),
      failure: (_) => emit(
        const PurchaseState.error(
          error: PurchaseStateError.errorWhileCreating,
          message: 'خطا در ثبت خرید',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                              Update by Id                                  */
  /* -------------------------------------------------------------------------- */

  Future<void> updatePurchaseById({
    required int id,
    required PurchaseEntity purchase,
    required PurchaseQueryFilter refreshFilter,
  }) async {
    emit(const PurchaseState.editing());

    final result = await _updateByIdUseCase(
      id: id,
      purchase: purchase,
    );

    result.when(
      success: (_) => loadPurchases(filter: refreshFilter),
      failure: (_) => emit(
        const PurchaseState.error(
          error: PurchaseStateError.errorWhileEditing,
          message: 'خطا در ویرایش خرید',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                            Update by Filter                                */
  /* -------------------------------------------------------------------------- */

  Future<void> updatePurchasesByFilter({
    required PurchaseQueryFilter filter,
    required PurchaseEntity purchase,
    required PurchaseQueryFilter refreshFilter,
  }) async {
    emit(const PurchaseState.editing());

    final result = await _updateByFilterUseCase(
      filter: filter,
      entity: purchase,
    );

    result.when(
      success: (_) => loadPurchases(filter: refreshFilter),
      failure: (_) => emit(
        const PurchaseState.error(
          error: PurchaseStateError.errorWhileEditing,
          message: 'خطا در ویرایش گروهی خریدها',
        ),
      ),
    );
  }

  /* -------------------------------------------------------------------------- */
  /*                                   Delete                                   */
  /* -------------------------------------------------------------------------- */

  Future<void> deletePurchaseById({
    required int id,
    required PurchaseQueryFilter refreshFilter,
  }) async {
    emit(const PurchaseState.deletingById());

    final result = await _deleteByIdUseCase(id: id);

    result.when(
      success: (_) => loadPurchases(filter: refreshFilter),
      failure: (_) => emit(
        const PurchaseState.error(
          error: PurchaseStateError.errorWhileDeletingById,
          message: 'خطا در حذف خرید',
        ),
      ),
    );
  }

  Future<void> deletePurchasesByFilter({
    required PurchaseQueryFilter filter,
    required PurchaseQueryFilter refreshFilter,
  }) async {
    emit(const PurchaseState.deletingByFilter());

    final result = await _deleteByFilterUseCase(filter: filter);

    result.when(
      success: (_) => loadPurchases(filter: refreshFilter),
      failure: (_) => emit(
        const PurchaseState.error(
          error: PurchaseStateError.errorWhileDeletingByFilter,
          message: 'خطا در حذف گروهی خریدها',
        ),
      ),
    );
  }
}
