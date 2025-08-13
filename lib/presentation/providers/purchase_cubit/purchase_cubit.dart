import 'package:baladeston/domain/usecase/pruchase/count_purchase_usacase.dart';
import 'package:baladeston/domain/usecase/pruchase/delete_purchase_by_id_usacase.dart';
import 'package:baladeston/domain/usecase/pruchase/delete_purchase_usecase_by_filter.dart';
import 'package:baladeston/domain/usecase/pruchase/get_purchase_by_id_usacase.dart';
import 'package:baladeston/domain/usecase/pruchase/get_purchase_usecase_by_filter.dart';
import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';
import 'package:baladeston/domain/filters/purchase_query_filter.dart';
import 'package:baladeston/domain/usecase/pruchase/create_purchase_usecase.dart';
import 'package:baladeston/domain/usecase/pruchase/edit_purchase_usecase.dart';

import 'purchase_state.dart';

class PurchaseCubit extends Cubit<PurchaseState> {
  final CreatePurchaseUseCase _createUseCase;
  final EditPurchaseUseCase _editUseCase;
  final GetPurchaseByIdUseCase _getByIdUseCase;
  final GetPurchaseByFilterUseCase _getByFilterUseCase;
  final DeletePurchaseByIdUseCase _deleteByIdUseCase;
  final DeletePurchaseByFilterUseCase _deleteByFilterUseCase;
  final CountPurchaseUseCase _countUseCase;

  PurchaseQueryFilter? _lastFilter;

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

  Future<void> loadPurchases([PurchaseQueryFilter? filter]) async {
    emit(const PurchaseState.loading());
    try {
      final f = filter ?? PurchaseQueryFilter();
      _lastFilter = f;
      final purchases = await _getByFilterUseCase(filter: f);
      final count = await _countUseCase(filter: f);
      emit(PurchaseState.success(purchases: purchases ?? [], count: count));
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }

  Future<void> loadPurchaseById(int id) async {
    emit(const PurchaseState.loading());
    try {
      final purchase = await _getByIdUseCase(id: id);
      if (purchase != null) {
        emit(PurchaseState.success(purchases: [purchase], count: 1));
      } else {
        emit(const PurchaseState.success(purchases: [], count: 0));
      }
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }

  Future<void> addPurchase(PurchaseEntity purchase) async {
    emit(const PurchaseState.loading());
    try {
      await _createUseCase(purchase: purchase);
      await _refreshLastFilter();
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }

  Future<void> editPurchase(PurchaseEntity purchase) async {
    emit(const PurchaseState.loading());
    try {
      await _editUseCase(purchase: purchase);
      await _refreshLastFilter();
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }

  Future<void> deletePurchaseById(int id) async {
    emit(const PurchaseState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await _refreshLastFilter();
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }

  Future<void> deletePurchasesByFilter(PurchaseQueryFilter filter) async {
    emit(const PurchaseState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await _refreshLastFilter();
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }

  Future<void> _refreshLastFilter() async {
    await loadPurchases(_lastFilter);
  }
}
