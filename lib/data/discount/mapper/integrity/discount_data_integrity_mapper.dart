import 'dart:convert';

import 'package:baladeston/core/enum/discount/discount_status.dart';
import 'package:baladeston/core/enum/discount/discount_target_type.dart';
import 'package:baladeston/domain/discount/failure/server/integration/discount_data_integrity_failure.dart';

final class DiscountDataIntegrityMapper {
  const DiscountDataIntegrityMapper();

  static DiscountDataIntegrityFailure? map(Map<String, dynamic> json) {
    final id = json['id'];
    final ownerId = json['ownerId'];
    final code = json['code'];
    final title = json['title'];
    final amount = json['amount'];
    final percent = json['percent'];
    final type = json['type'];
    final targetId = json['targetId'];
    final minOrderAmount = json['minOrderAmount'];
    final firstOrderOnly = json['firstOrderOnly'];
    final status = json['status'];
    final createdAt = json['createdAt'];
    final userCreated = json['userCreated'];
    final expiresAt = json['expiresAt'];
    final maxUse = json['maxUse'];
    final usage = json['usage'];

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

    // Optional fields types
    if (id != null && id is! int) {
      return _failure('id must be an int.', json);
    }
    if (ownerId != null && ownerId is! int) {
      return _failure('ownerId must be an int.', json);
    }
    if (title != null && title is! String) {
      return _failure('title must be a String.', json);
    }
    if (amount != null && amount is! int) {
      return _failure('amount must be an int.', json);
    }
    if (targetId != null && targetId is! int) {
      return _failure('targetId must be an int.', json);
    }
    if (minOrderAmount != null && minOrderAmount is! int) {
      return _failure('minOrderAmount must be an int.', json);
    }
    if (firstOrderOnly != null && firstOrderOnly is! bool) {
      return _failure('firstOrderOnly must be a bool.', json);
    }
    if (userCreated != null && userCreated is! bool) {
      return _failure('userCreated must be a bool.', json);
    }
    if (maxUse != null && maxUse is! int) {
      return _failure('maxUse must be an int.', json);
    }
    if (usage != null && usage is! int) {
      return _failure('usage must be an int.', json);
    }

    // Date fields
    if (createdAt != null) {
      if (createdAt is! String || DateTime.tryParse(createdAt) == null) {
        return _failure('createdAt is not a valid date.', json);
      }
    }
    if (expiresAt != null) {
      if (expiresAt is! String || DateTime.tryParse(expiresAt) == null) {
        return _failure('expiresAt is not a valid date.', json);
      }
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
