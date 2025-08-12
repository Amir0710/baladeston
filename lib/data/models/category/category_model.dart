// data/models/category_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/category/category_entity.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    int? id,
    required String title,
    required String password,
    required String status,
    String? thumbnailUrl,
    required DateTime createdAt,
    required DateTime lastTransaction,
    required int ownerId,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  factory CategoryModel.fromEntity(CategoryEntity entity) {
    return CategoryModel(
      id: entity.id,
      title: entity.title,
      password: entity.password,
      status: entity.status,
      thumbnailUrl: entity.thumbnailUrl,
      createdAt: entity.createdAt,
      ownerId: entity.ownerId,
      lastTransaction: entity.lastTransaction,
    );
  }

  const CategoryModel._(); 
  CategoryEntity toEntity() {
    return CategoryEntity(
      id: id,
      title: title,
      password: password,
      status: status,
      thumbnailUrl: thumbnailUrl,
      createdAt: createdAt,
      ownerId: ownerId,
      lastTransaction: lastTransaction,
    );
  }
}
