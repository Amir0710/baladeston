import 'package:bloc/bloc.dart';

import 'purchase_state.dart';
import 'package:baladeston/domain/purchase/entity/purchase_entity.dart';
import 'package:baladeston/data/purchase/filter/purchase_query_filter.dart';

// UseCases
import 'package:baladeston/domain/purchase/usecase/create_purchase/create_purchase_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/edit_purchase_usecase.dart';
import 'package:baladeston/domain/purchase/usecase/get_putchase_by_id/get_purchase_by_id_usacase.dart';
import 'package:baladeston/domain/purchase/usecase/get_purchase_usecase_by_filter.dart';
import 'package:baladeston/domain/purchase/usecase/delete_putchase_by_id/delete_purchase_by_id_usacase.dart';
import 'package:baladeston/domain/purchase/usecase/delete_purchase_usecase_by_filter.dart';
import 'package:baladeston/domain/purchase/usecase/count_purchase/count_purchase_usacase.dart';

class PurchaseCubit extends Cubit<PurchaseState> {
  final CreatePurchaseUseCase _createUseCase;
  final EditPurchaseUseCase _editUseCase;
  final GetPurchaseByIdUseCase _getByIdUseCase;
  final GetPurchaseByFilterUseCase _getByFilterUseCase;
  final DeletePurchaseByIdUseCase _deleteByIdUseCase;
  final DeletePurchaseByFilterUseCase _deleteByFilterUseCase;
  final CountPurchaseUseCase _countUseCase;

  PurchaseCubit({
    required CreatePurchaseUseCase createUseCase,
    required EditPurchaseUseCase editUseCase,
    required GetPurchaseByIdUseCase getByIdUseCase,
    required GetPurchaseByFilterUseCase getByFilterUseCase,
    required DeletePurchaseByIdUseCase deleteByIdUseCase,
    required DeletePurchaseByFilterUseCase deleteByFilterUseCase,
    required CountPurchaseUseCase countUseCase,
  })  : _createUseCase = createUseCase,
        _editUseCase = editUseCase,
        _getByIdUseCase = getByIdUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _countUseCase = countUseCase,
        super(const PurchaseState.initial());

  // ---------------------------------------------------------------------------
  // Load list
  // ---------------------------------------------------------------------------
  Future<void> loadPurchases({
    required PurchaseQueryFilter filter,
  }) async {
    emit(const PurchaseState.fetchingList());

    final listResult = await _getByFilterUseCase(filter: filter);

    await listResult.when(
      success: (purchases) async {
        final countResult = await _countUseCase(filter: filter);

        final count = countResult.when(
          success: (value) => value,
          failure: (_) => purchases.length, // fallback امن
        );

        emit(PurchaseState.successListLoaded(
          purchases: purchases,
          count: count,
        ));
      },
      failure: (_) {
        emit(const PurchaseState.error(
          error: PurchaseStateError.errorWhileLoadingList,
          message: 'خطا در دریافت لیست خریدها',
        ));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Load by id
  // ---------------------------------------------------------------------------
  Future<void> loadPurchaseById({
    required int id,
  }) async {
    emit(const PurchaseState.fetchingSingle());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (purchase) {
        emit(PurchaseState.successSingleLoaded(purchase: purchase));
      },
      failure: (_) {
        emit(const PurchaseState.error(
          error: PurchaseStateError.errorWhileLoadingSingle,
          message: 'خطا در دریافت اطلاعات خرید',
        ));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Create
  // ---------------------------------------------------------------------------
  Future<void> addPurchase({
    required PurchaseEntity purchase,
    required PurchaseQueryFilter refreshFilter,
  }) async {
    emit(const PurchaseState.creating());

    final result = await _createUseCase(purchase: purchase);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const PurchaseState.error(
          error: PurchaseStateError.errorWhileCreating,
          message: 'خطا در ثبت خرید',
        ));
      },
    );

    if (shouldRefresh) {
      await loadPurchases(filter: refreshFilter);
    }
  }

  // ---------------------------------------------------------------------------
  // Edit
  // ---------------------------------------------------------------------------
  Future<void> editPurchase({
    required PurchaseEntity purchase,
    required PurchaseQueryFilter refreshFilter,
  }) async {
    emit(const PurchaseState.editing());

    final result = await _editUseCase(purchase: purchase);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const PurchaseState.error(
          error: PurchaseStateError.errorWhileEditing,
          message: 'خطا در ویرایش خرید',
        ));
      },
    );

    if (shouldRefresh) {
      await loadPurchases(filter: refreshFilter);
    }
  }

  // ---------------------------------------------------------------------------
  // Delete by id
  // ---------------------------------------------------------------------------
  Future<void> deletePurchaseById({
    required int id,
    required PurchaseQueryFilter refreshFilter,
  }) async {
    emit(const PurchaseState.deletingById());

    final result = await _deleteByIdUseCase(id: id);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const PurchaseState.error(
          error: PurchaseStateError.errorWhileDeletingById,
          message: 'خطا در حذف خرید',
        ));
      },
    );

    if (shouldRefresh) {
      await loadPurchases(filter: refreshFilter);
    }
  }

  // ---------------------------------------------------------------------------
  // Delete by filter
  // ---------------------------------------------------------------------------
  Future<void> deletePurchasesByFilter({
    required PurchaseQueryFilter filter,
    required PurchaseQueryFilter refreshFilter,
  }) async {
    emit(const PurchaseState.deletingByFilter());

    final result = await _deleteByFilterUseCase(filter: filter);

    bool shouldRefresh = false;

    result.when(
      success: (_) {
        shouldRefresh = true;
      },
      failure: (_) {
        emit(const PurchaseState.error(
          error: PurchaseStateError.errorWhileDeletingByFilter,
          message: 'خطا در حذف گروهی خریدها',
        ));
      },
    );

    if (shouldRefresh) {
      await loadPurchases(filter: refreshFilter);
    }
  }
}
