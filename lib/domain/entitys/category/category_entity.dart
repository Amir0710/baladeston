// class Category {
//   final int id;
//   final String title;
//   final String password;
//   final double price;
//   final String status;
//   final String? thumbnailUrl;
//   final DateTime createdAt;
//   final int ownerId;

//   const Category({
//     required this.id,
//     required this.title,
//     required this.password,
//     required this.price,
//     required this.status,
//     this.thumbnailUrl,
//     required this.createdAt,
//     required this.ownerId,
//   });
// }
// domain/entities/category_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';

@freezed
abstract class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required int id,
    required String title,
    required String password,
    required double price,
    required String status,
    String? thumbnailUrl,
    required DateTime createdAt,
    required int ownerId,
  }) = _CategoryEntity;
}
