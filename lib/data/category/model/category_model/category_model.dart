import 'package:baladeston/core/enum/category/category/category_status.dart';
import 'package:baladeston/core/enum/category/category/category_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
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
    int? ownerId
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
