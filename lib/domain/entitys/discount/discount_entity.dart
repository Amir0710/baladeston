// class Discount {
//   final int? userId ;
//   final int id;
//   final int category;
//   final int percent;
//   final String status;
//   final DateTime expiresAt;

//   const Discount( {
//     this.userId,
//     required this.id,
//     required this.category,
//     required this.percent,
//     required this.status,
//     required this.expiresAt,
//   });
// }

// domain/entities/discount_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_entity.freezed.dart';

@freezed
abstract class DiscountEntity with _$DiscountEntity {
  const factory DiscountEntity({
    required int? userId,
    required int? id,
    required int? category,
    required int percent,
    required String status,
    required DateTime expiresAt,
  }) = _DiscountEntity;
}
