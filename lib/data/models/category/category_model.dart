import 'package:baladeston/domain/entitys/category/category.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  final int id;
  final String title;
  final String password;
  final double price;
  final String status;
  final String? thumbnailUrl;
  final DateTime createdAt;
  final int ownerId;

  const CategoryModel({
    required this.id,
    required this.title,
    required this.password,
    required this.price,
    required this.status,
    this.thumbnailUrl,
    required this.createdAt,
    required this.ownerId,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  /// تبدیل مدل به domain entity
  Category toDomain() => Category(
    
        id: id,
        title: title,
        password: password,
        price: price,
        status: status,
        thumbnailUrl: thumbnailUrl,
        createdAt: createdAt,
        ownerId: ownerId,
      );

  /// ساخت مدل از روی domain entity
  factory CategoryModel.fromDomain(Category category) => CategoryModel(
        id: category.id,
        title: category.title,
        password: category.password,
        price: category.price,
        status: category.status,
        thumbnailUrl: category.thumbnailUrl,
        createdAt: category.createdAt,
        ownerId: category.ownerId,
      );
}
