import 'package:baladeston/core/enum/category/category/category_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';

@freezed
abstract class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    int? id,
    int? parent,
    required String title,
    CategoryStatus? status,
    String? thumbnailUrl,
    DateTime? createdAt,
    DateTime? lastTransaction,
    required int ownerId,
  }) = _CategoryEntity;
}
