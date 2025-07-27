import 'package:baladeston/presentation/providers/discount_cubit/discount_state.dart';
import 'package:bloc/bloc.dart';
import 'package:baladeston/domain/filters/discount_query_filter.dart';
import 'package:baladeston/domain/entitys/discount/discount_entity.dart';
import 'package:baladeston/domain/usecase/discount/create_discount_usecase.dart';
import 'package:baladeston/domain/usecase/discount/get_discount_usecase.dart';
import 'package:baladeston/domain/usecase/discount/edit_discount_usecase.dart';

class DiscountCubit extends Cubit<DiscountState> {
  final CreateDiscountUseCase _createUseCase;
  final GetDiscountUseCase _getUseCase;
  final EditDiscountUseCase _editUseCase;

  DiscountCubit({
    required CreateDiscountUseCase createUseCase,
    required GetDiscountUseCase getUseCase,
    required EditDiscountUseCase editUseCase,
  })  : _createUseCase = createUseCase,
        _getUseCase = getUseCase,
        _editUseCase = editUseCase,
        super(const DiscountState.initial());

  /// دریافت لیست تخفیف‌ها با فیلتر اختیاری
  Future<void> loadDiscounts([DiscountQueryFilter? filter]) async {
    emit(const DiscountState.loading());
    try {
      final f = filter ?? DiscountQueryFilter();
      final discounts = await _getUseCase(f);
      emit(DiscountState.loaded(discounts: discounts));
    } catch (e) {
      emit(DiscountState.failure(message: e.toString()));
    }
  }

  /// ایجاد تخفیف جدید
  Future<void> addDiscount(DiscountEntity discount) async {
    emit(const DiscountState.loading());
    try {
      await _createUseCase(discount);
      await loadDiscounts();
    } catch (e) {
      emit(DiscountState.failure(message: e.toString()));
    }
  }

  /// ویرایش تخفیف
  Future<void> editDiscount(DiscountEntity discount, int discountId) async {
    emit(const DiscountState.loading());
    try {
      await _editUseCase(discount, discountId);
      await loadDiscounts();
    } catch (e) {
      emit(DiscountState.failure(message: e.toString()));
    }
  }
}
