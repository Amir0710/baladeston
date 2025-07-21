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
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    required int id,
    required String title,
    required String password,
    required double price,
    required String status,
    String? thumbnailUrl,
    required DateTime createdAt,
    required int ownerId,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}


