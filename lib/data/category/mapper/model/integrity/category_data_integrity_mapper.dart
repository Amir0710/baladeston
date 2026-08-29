import 'dart:convert';

import 'package:baladeston/core/enum/category/category/category_status.dart';
import 'package:baladeston/core/enum/category/category/category_type.dart';
import 'package:baladeston/domain/category/failure/server/integration/category_data_integrity_failure.dart';

final class CategoryDataIntegrityMapper {
  const CategoryDataIntegrityMapper();

  static CategoryDataIntegrityFailure? map(Map<String, dynamic> json) {
    final id = json['id'];
    final parent = json['parent'];
    final type = json['type'];
    final avgRate = json['avgRate'];
    final rageCount = json['rageCount'];
    final status = json['status'];
    final thumbnailUrl = json['thumbnailUrl'];
    final createdAt = json['createdAt'];
    final lastTransaction = json['lastTransaction'];
    final title = json['title'];
    final description = json['description'];
    final ownerId = json['ownerId'];

    // Required fields
    if (type == null) {
      return _failure('type is null.', json);
    }
    if (title == null) {
      return _failure('title is null.', json);
    }
    if (description == null) {
      return _failure('description is null.', json);
    }
    if (ownerId == null) {
      return _failure('ownerId is null.', json);
    }

    // Required types
    if (title is! String || title.trim().isEmpty) {
      return _failure('title must be a non-empty string.', json);
    }

    if (description is! String || description.trim().isEmpty) {
      return _failure('description must be a non-empty string.', json);
    }

    if (ownerId is! int) {
      return _failure('ownerId must be an int.', json);
    }

    if (ownerId < 0) {
      return _failure('ownerId cannot be negative.', json);
    }

    // Optional int id
    if (id != null && id is! int) {
      return _failure('id must be an int.', json);
    }

    if (id is int && id < 0) {
      return _failure('id cannot be negative.', json);
    }

    // Optional int parent
    if (parent != null && parent is! int) {
      return _failure('parent must be an int.', json);
    }

    if (parent is int && parent < 0) {
      return _failure('parent cannot be negative.', json);
    }

    // Optional double avgRate
    if (avgRate != null && avgRate is! num) {
      return _failure('avgRate must be numeric.', json);
    }

    if (avgRate is num && avgRate < 0) {
      return _failure('avgRate cannot be negative.', json);
    }

    // Optional int rageCount
    if (rageCount != null && rageCount is! int) {
      return _failure('rageCount must be int.', json);
    }

    if (rageCount is int && rageCount < 0) {
      return _failure('rageCount cannot be negative.', json);
    }

    // Optional thumbnailUrl
    if (thumbnailUrl != null && thumbnailUrl is! String) {
      return _failure('thumbnailUrl must be a string.', json);
    }

    // Optional createdAt (ISO-8601 date)
    if (createdAt != null) {
      if (createdAt is! String || DateTime.tryParse(createdAt) == null) {
        return _failure('createdAt is not a valid date.', json);
      }
    }

    // Optional lastTransaction (ISO-8601 date)
    if (lastTransaction != null) {
      if (lastTransaction is! String ||
          DateTime.tryParse(lastTransaction) == null) {
        return _failure('lastTransaction is not a valid date.', json);
      }
    }

    // Required enum
    if (type is! String || !_isValidCategoryType(type)) {
      return _failure('type is invalid.', json);
    }

    // Optional enum
    if (status != null &&
        (status is! String || !_isValidCategoryStatus(status))) {
      return _failure('status is invalid.', json);
    }

    return null;
  }

  static CategoryDataIntegrityFailure _failure(
      String message,
      Map<String, dynamic> json,
      ) {
    return CategoryDataIntegrityFailure(
      debugMessage: message,
      rawSource: jsonEncode(json),
    );
  }

  static bool _isValidCategoryType(String value) =>
      CategoryType.values.any((item) => item.name == value);

  static bool _isValidCategoryStatus(String value) =>
      CategoryStatus.values.any((item) => item.name == value);
}
