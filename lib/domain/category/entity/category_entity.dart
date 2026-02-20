
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';

@freezed
abstract class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    int? id,
    required String title,
    String? password,
    String? status,
    String? thumbnailUrl,
    DateTime? createdAt,
    DateTime? lastTransaction,
    required int ownerId,
  }) = _CategoryEntity;

}
