// data/models/category_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    int? id,
    required String title,
    required String password,
    String? status,
    String? thumbnailUrl,
    required DateTime createdAt,
    required DateTime lastTransaction,
    required int ownerId,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);


}
