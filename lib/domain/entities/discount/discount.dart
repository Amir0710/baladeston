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


import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount.freezed.dart';
part 'discount.g.dart';

@freezed
class Discount with _$Discount {
  const factory Discount({
    int? userId,
    required int id,
    required int category,
    required int percent,
    required String status,
    required DateTime expiresAt,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) => _$DiscountFromJson(json);
}
