import 'package:baladeston/core/enum/category/category/category_status.dart';
import 'package:baladeston/core/enum/category/category/category_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';

@freezed
abstract class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    int? id,
    int? parent,
    required CategoryType type,
    double? avgRate,
    int? rageCount,
    CategoryStatus? status,
    String? thumbnailUrl,
    DateTime? createdAt,
    DateTime? lastTransaction,
    required String title,
    required String description,
    int? ownerId,
  }) = _CategoryEntity;
}
