// data/models/discount_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_model.freezed.dart';
part 'discount_model.g.dart';

@freezed
abstract class DiscountModel with _$DiscountModel {
  const factory DiscountModel({
    required int? userId,
    required int? id,
    required int? category,
    required int percent,
    required String status, // edit can be nullable
    required DateTime expiresAt, // edit can be nullable
    // edit add video id and number of usage and number of max use is nullable
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}
