// lib/application/category/category_state.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;

  /// لیست دسته‌بندی‌ها
  const factory CategoryState.success({
    required List<CategoryEntity> categories,
    required int count,
  }) = _Success;


  const factory CategoryState.failure({
    required String message,
  }) = _Failure;
}
