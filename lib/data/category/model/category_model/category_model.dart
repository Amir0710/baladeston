import 'package:baladeston/core/enum/category/category/category_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    int? id,
    String? password,
    String? thumbnailUrl,
    DateTime? createdAt,
    DateTime? lastTransaction,
    CategoryStatus? status,
    required int ownerId,
    required String title,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
