import 'dart:convert';

import 'package:baladeston/core/enum/collection/collection/collection_status.dart';
import 'package:baladeston/domain/collection/failure/server/integration/collection_data_integrity_failure.dart';

final class CollectionDataIntegrityMapper {
  const CollectionDataIntegrityMapper();

  static CollectionDataIntegrityFailure? map(Map<String, dynamic> json) {
    final id = json['id'];
    final title = json['title'];
    final description = json['description'];
    final ownerId = json['ownerId'];
    final thumbnailUrl = json['thumbnailUrl'];
    final status = json['status'];
    final count = json['count'];
    final price = json['price'];
    final uniqueCode = json['uniqueCode'];
    final lastTransaction = json['lastTransaction'];
    final createdAt = json['createdAt'];

    // Required fields
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

    // Optional int count
    if (count != null && count is! int) {
      return _failure('count must be int.', json);
    }

    if (count is int && count < 0) {
      return _failure('count cannot be negative.', json);
    }

    // Optional int price
    if (price != null && price is! int) {
      return _failure('price must be int.', json);
    }

    if (price is int && price < 0) {
      return _failure('price cannot be negative.', json);
    }

    // Optional uniqueCode
    if (uniqueCode != null && uniqueCode is! String) {
      return _failure('uniqueCode must be a string.', json);
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

    // Optional enum
    if (status != null &&
        (status is! String || !_isValidCollectionStatus(status))) {
      return _failure('status is invalid.', json);
    }

    return null;
  }

  static CollectionDataIntegrityFailure _failure(
    String message,
    Map<String, dynamic> json,
  ) {
    return CollectionDataIntegrityFailure(
      debugMessage: message,
      rawSource: jsonEncode(json),
    );
  }

  static bool _isValidCollectionStatus(String value) =>
      CollectionStatus.values.any((item) => item.name == value);
}
