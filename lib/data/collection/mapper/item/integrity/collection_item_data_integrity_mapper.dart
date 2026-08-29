import 'dart:convert';

import 'package:baladeston/core/enum/collection/collection_item/collection_item_status.dart';
import 'package:baladeston/domain/collection/failure/server/integration/collection_data_integrity_failure.dart';

final class CollectionItemDataIntegrityMapper {
  const CollectionItemDataIntegrityMapper();

  static CollectionDataIntegrityFailure? map(Map<String, dynamic> json) {
    final id = json['id'];
    final title = json['title'];
    final videoId = json['videoId'];
    final collectionId = json['collectionId'];
    final avgRate = json['avgRate'];
    final rateCount = json['rateCount'];
    final thumbnailUrl = json['thumbnailUrl'];
    final status = json['status'];
    final addedAt = json['addedAt'];
    final lastTransaction = json['lastTransaction'];
    final adderId = json['adderId'];

    // Required fields
    if (videoId == null) {
      return _failure('videoId is null.', json);
    }
    if (collectionId == null) {
      return _failure('collectionId is null.', json);
    }
    if (adderId == null) {
      return _failure('adderId is null.', json);
    }

    // Required types
    if (videoId is! int || videoId < 0) {
      return _failure('videoId must be a non-negative int.', json);
    }
    if (collectionId is! int || collectionId < 0) {
      return _failure('collectionId must be a non-negative int.', json);
    }
    if (adderId is! int || adderId < 0) {
      return _failure('adderId must be a non-negative int.', json);
    }

    // Optional fields
    if (id != null && (id is! int || id < 0)) {
      return _failure('id must be a non-negative int.', json);
    }

    if (title != null && title is! String) {
      return _failure('title must be a string.', json);
    }

    if (avgRate != null && (avgRate is! num || avgRate < 0)) {
      return _failure('avgRate must be a non-negative num.', json);
    }

    if (rateCount != null && (rateCount is! int || rateCount < 0)) {
      return _failure('rateCount must be a non-negative int.', json);
    }

    if (thumbnailUrl != null && thumbnailUrl is! String) {
      return _failure('thumbnailUrl must be a string.', json);
    }

    if (addedAt != null) {
      if (addedAt is! String || DateTime.tryParse(addedAt) == null) {
        return _failure('addedAt is not a valid date.', json);
      }
    }

    if (lastTransaction != null) {
      if (lastTransaction is! String ||
          DateTime.tryParse(lastTransaction) == null) {
        return _failure('lastTransaction is not a valid date.', json);
      }
    }

    // Optional enum
    if (status != null &&
        (status is! String || !_isValidCollectionItemStatus(status))) {
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

  static bool _isValidCollectionItemStatus(String value) =>
      CollectionItemStatus.values.any((item) => item.name == value);
}
