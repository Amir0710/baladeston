import 'package:baladeston/domain/usecase/pruchase/create_purchase_usecase.dart';
import 'package:baladeston/domain/usecase/pruchase/edit_purchase_usecase.dart';
import 'package:baladeston/domain/usecase/pruchase/get_purchase_usecase.dart';
import 'package:baladeston/domain/usecase/pruchase/get_purchase_usecase.dart';
import 'package:baladeston/presentation/providers/purchase_cubit/purchase_state.dart';
import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/entitys/purchase/purchase_entity.dart';


class PurchaseCubit extends Cubit<PurchaseState> {
  final CreatePurchaseUseCase _createUseCase;
  final GetPurchaseUseCase _getListUseCase;
  // final GetPurchaseByIdUseCase _getByIdUseCase;
  final EditPurchaseUseCase _editUseCase;

  PurchaseCubit({
    required CreatePurchaseUseCase createUseCase,
    required GetPurchaseUseCase getListUseCase,
    // required GetPurchaseByIdUseCase getByIdUseCase,
    required EditPurchaseUseCase editUseCase,
  })  : _createUseCase = createUseCase,
        _getListUseCase = getListUseCase,
        // _getByIdUseCase = getByIdUseCase,
        _editUseCase = editUseCase,
        super(const PurchaseState.initial());

  /// بارگذاری همه سفارش‌ها
  Future<void> loadPurchases() async {
    emit(const PurchaseState.loading());
    try {
      final purchases = await _getListUseCase();
      emit(PurchaseState.listLoaded(purchases: purchases));
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }

  /// بارگذاری جزئیات یک سفارش بر اساس شناسه
  Future<void> loadPurchaseById(int id) async {
    emit(const PurchaseState.loading());
    try {
      final purchase = await _getByIdUseCase(id);
      emit(PurchaseState.detailLoaded(purchase: purchase));
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }

  /// ایجاد یک سفارش جدید
  Future<void> addPurchase(PurchaseEntity purchase) async {
    emit(const PurchaseState.loading());
    try {
      await _createUseCase(purchase);
      await loadPurchases();
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }

  /// ویرایش سفارش موجود
  Future<void> editPurchase(PurchaseEntity purchase, int purchaseId) async {
    emit(const PurchaseState.loading());
    try {
      await _editUseCase(purchase, purchaseId);
      await loadPurchases();
    } catch (e) {
      emit(PurchaseState.failure(message: e.toString()));
    }
  }
}
