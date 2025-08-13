import 'package:baladeston/presentation/providers/discount_cubit/discount_state.dart';
import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/entitys/discount/discount_entity.dart';
import 'package:baladeston/domain/usecase/discount/create_discount_usecase.dart';
import 'package:baladeston/domain/usecase/discount/get_discount_usecase_by_filter.dart';
import 'package:baladeston/domain/usecase/discount/get_discount_usecase_by_id.dart';
import 'package:baladeston/domain/usecase/discount/edit_discount_usecase.dart';
import 'package:baladeston/domain/usecase/discount/delete_discount_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/discount/delete_discount_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/discount/count_discount_usecase.dart';

class DiscountCubit extends Cubit<DiscountState> {
  final CreateDiscountUseCase _createUseCase;
  final GetDiscountByFilterUseCase _getByFilterUseCase;
  final GetDiscountByIdUseCase _getByIdUseCase;
  final EditDiscountUseCase _editUseCase;
  final DeleteDiscountByIdUseCase _deleteByIdUseCase;
  final DeleteDiscountByFilterUseCase _deleteByFilterUseCase;
  final CountDiscountUseCase _countUseCase;

  DiscountCubit({
    required CreateDiscountUseCase createUseCase,
    required GetDiscountByFilterUseCase getByFilterUseCase,
    required GetDiscountByIdUseCase getByIdUseCase,
    required EditDiscountUseCase editUseCase,
    required DeleteDiscountByIdUseCase deleteByIdUseCase,
    required DeleteDiscountByFilterUseCase deleteByFilterUseCase,
    required CountDiscountUseCase countUseCase,
  })  : _createUseCase = createUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        _editUseCase = editUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _countUseCase = countUseCase,
        super(const DiscountState.initial());

  /// دریافت لیست تخفیف‌ها و شمارش بر اساس فیلتر
  Future<void> loadDiscounts(DiscountQueryFilter filter) async {
    emit(const DiscountState.loading());
    try {
      final discounts = await _getByFilterUseCase(filter: filter) ?? [];
      final count = await _countUseCase(filter: filter);
      emit(DiscountState.success(discounts: discounts, count: count));
    } catch (e) {
      emit(DiscountState.failure(message: e.toString()));
    }
  }

  /// دریافت یک تخفیف با آیدی
  Future<void> loadDiscountById(int id) async {
    emit(const DiscountState.loading());
    try {
      final discount = await _getByIdUseCase(id: id);
      if (discount != null) {
        emit(DiscountState.success(discounts: [discount], count: 1));
      } else {
        emit(const DiscountState.failure(message: 'Discount not found'));
      }
    } catch (e) {
      emit(DiscountState.failure(message: e.toString()));
    }
  }

  /// ایجاد تخفیف جدید
  Future<void> addDiscount(DiscountEntity discount, DiscountQueryFilter refreshFilter) async {
    emit(const DiscountState.loading());
    try {
      await _createUseCase(discount: discount);
      await loadDiscounts(refreshFilter);
    } catch (e) {
      emit(DiscountState.failure(message: e.toString()));
    }
  }

  /// ویرایش تخفیف
  Future<void> editDiscount(DiscountEntity discount, DiscountQueryFilter refreshFilter) async {
    emit(const DiscountState.loading());
    try {
      await _editUseCase(discount: discount);
      await loadDiscounts(refreshFilter);
    } catch (e) {
      emit(DiscountState.failure(message: e.toString()));
    }
  }

  /// حذف تخفیف با آیدی
  Future<void> deleteDiscountById(int id, DiscountQueryFilter refreshFilter) async {
    emit(const DiscountState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await loadDiscounts(refreshFilter);
    } catch (e) {
      emit(DiscountState.failure(message: e.toString()));
    }
  }

  /// حذف تخفیف‌ها بر اساس فیلتر
  Future<void> deleteDiscountsByFilter(DiscountQueryFilter filter, DiscountQueryFilter refreshFilter) async {
    emit(const DiscountState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await loadDiscounts(refreshFilter);
    } catch (e) {
      emit(DiscountState.failure(message: e.toString()));
    }
  }
}
