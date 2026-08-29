import 'dart:convert';

import 'package:baladeston/core/enum/discount/discount_status.dart';
import 'package:baladeston/core/enum/discount/discount_target_type.dart';
import 'package:baladeston/domain/discount/failure/server/integration/discount_data_integrity_failure.dart';

final class DiscountDataIntegrityMapper {
  const DiscountDataIntegrityMapper();

  static DiscountDataIntegrityFailure? map(Map<String, dynamic> json) {
    final code = json['code'];
    final percent = json['percent'];
    final type = json['type'];
    final status = json['status'];

    // Required fields
    if (code == null) {
      return _failure('code is null.', json);
    }
    if (percent == null) {
      return _failure('percent is null.', json);
    }

    // Required types
    if (code is! String) {
      return _failure('code must be a String.', json);
    }
    if (percent is! int) {
      return _failure('percent must be an int.', json);
    }

    // Optional enum: DiscountTargetType
    if (type != null &&
        (type is! String || !_isValidDiscountTargetType(type))) {
      return _failure('type is invalid.', json);
    }

    // Optional enum: DiscountStatus
    if (status != null &&
        (status is! String || !_isValidDiscountStatus(status))) {
      return _failure('status is invalid.', json);
    }

    return null;
  }

  static DiscountDataIntegrityFailure _failure(
    String message,
    Map<String, dynamic> json,
  ) {
    return DiscountDataIntegrityFailure(
      debugMessage: message,
      rawSource: jsonEncode(json),
    );
  }

  static bool _isValidDiscountTargetType(String value) =>
      DiscountTargetType.values.any((item) => item.name == value);

  static bool _isValidDiscountStatus(String value) =>
      DiscountStatus.values.any((item) => item.name == value);
}
