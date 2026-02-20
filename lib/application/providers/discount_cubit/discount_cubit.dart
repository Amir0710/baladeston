import 'package:baladeston/data/discount/filter/discount_query_filter.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/usecase/count_discount/count_discount_usecase.dart';
import 'package:baladeston/domain/discount/usecase/create_discount/create_discount_usecase.dart';
import 'package:baladeston/domain/discount/usecase/delete_discount_by_filter/delete_discount_by_filter_usecase.dart';
import 'package:baladeston/domain/discount/usecase/delete_discount_by_id/delete_discount_by_id_usecase.dart';
import 'package:baladeston/domain/discount/usecase/edit_discount_usecase.dart';
import 'package:baladeston/domain/discount/usecase/get_discount_by_filter/get_discount_usecase_by_filter.dart';
import 'package:baladeston/domain/discount/usecase/get_discount_by_id/get_discount_usecase_by_id.dart';
import 'package:bloc/bloc.dart';

import 'discount_state.dart';

class DiscountCubit extends Cubit<DiscountState> {
  final CreateDiscountUseCase _createUseCase;
  final GetDiscountByFilterUseCase _getByFilterUseCase;
  final GetDiscountByIdUseCase _getByIdUseCase;
  final UpdateDiscountByIdUseCase _editUseCase;
  final DeleteDiscountByIdUseCase _deleteByIdUseCase;
  final DeleteDiscountByFilterUseCase _deleteByFilterUseCase;
  final CountDiscountUseCase _countUseCase;

  DiscountCubit({
    required CreateDiscountUseCase createUseCase,
    required GetDiscountByFilterUseCase getByFilterUseCase,
    required GetDiscountByIdUseCase getByIdUseCase,
    required UpdateDiscountByIdUseCase editUseCase,
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

  // ---------------------------------------------------------------------------
  // Load by filter
  // ---------------------------------------------------------------------------
  Future<void> loadDiscounts({required DiscountQueryFilter filter}) async {
    emit(const DiscountState.fetchingList());

    final listResult = await _getByFilterUseCase(filter: filter);

    await listResult.when(
      success: (discounts) async {
        final countResult = await _countUseCase(filter: filter);

        final count = countResult.when(
          success: (value) => value,
          failure: (_) => discounts.length,
        );

        emit(DiscountState.successListLoaded(
          discounts: discounts,
          count: count,
        ));
      },
      failure: (error) {
        emit(const DiscountState.error(
          error: DiscountStateError.errorWhileLoadingList,
          message: 'خطا در دریافت لیست تخفیف‌ها',
        ));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Load by ID
  // ---------------------------------------------------------------------------
  Future<void> loadDiscountById({required int id}) async {
    emit(const DiscountState.fetchingSingle());

    final result = await _getByIdUseCase(id: id);

    result.when(
      success: (discount) {
        emit(DiscountState.successSingleLoaded(discount: discount));
      },
      failure: (error) {
        emit(const DiscountState.error(
          error: DiscountStateError.errorWhileLoadingSingle,
          message: 'خطا در دریافت اطلاعات تخفیف',
        ));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Create
  // ---------------------------------------------------------------------------
  Future<void> addDiscount(
      {required DiscountEntity discount,
      required DiscountQueryFilter refreshFilter}) async {
    emit(const DiscountState.creating());

    final result = await _createUseCase(discount: discount);

    result.when(
      success: (_) async => await loadDiscounts(filter: refreshFilter),
      failure: (_) {
        emit(const DiscountState.error(
          error: DiscountStateError.errorWhileCreating,
          message: 'خطا در ایجاد تخفیف',
        ));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Edit
  // ---------------------------------------------------------------------------
  Future<void> editDiscount(
      {required DiscountEntity discount,
      required DiscountQueryFilter refreshFilter}) async {
    emit(const DiscountState.editing());

    final result = await _editUseCase(discount: discount);

    result.when(
      success: (_) async => await loadDiscounts(filter: refreshFilter),
      failure: (_) {
        emit(const DiscountState.error(
          error: DiscountStateError.errorWhileEditing,
          message: 'خطا در ویرایش تخفیف',
        ));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Delete by ID
  // ---------------------------------------------------------------------------
  Future<void> deleteDiscountById(
      {required int id, required DiscountQueryFilter refreshFilter}) async {
    emit(const DiscountState.deletingById());

    final result = await _deleteByIdUseCase(id: id);

    result.when(
      success: (_) async => await loadDiscounts(filter: refreshFilter),
      failure: (_) {
        emit(const DiscountState.error(
          error: DiscountStateError.errorWhileDeletingById,
          message: 'خطا در حذف تخفیف',
        ));
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Delete by filter
  // ---------------------------------------------------------------------------
  Future<void> deleteDiscountsByFilter(
      {required DiscountQueryFilter filter,
      required DiscountQueryFilter refreshFilter}) async {
    emit(const DiscountState.deletingByFilter());

    final result = await _deleteByFilterUseCase(filter: filter);

    result.when(
      success: (_) async => await loadDiscounts(filter: refreshFilter),
      failure: (_) {
        emit(const DiscountState.error(
          error: DiscountStateError.errorWhileDeletingByFilter,
          message: 'خطا در حذف گروهی تخفیف‌ها',
        ));
      },
    );
  }
}
