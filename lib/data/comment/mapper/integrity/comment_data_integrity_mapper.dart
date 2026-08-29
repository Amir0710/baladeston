import 'dart:convert';

import 'package:baladeston/core/enum/comment/comment_status.dart';
import 'package:baladeston/core/enum/comment/comment_type.dart';
import 'package:baladeston/domain/comment/failure/server/integration/comment_data_integrity_failure.dart';

final class CommentDataIntegrityMapper {
  const CommentDataIntegrityMapper();

  static CommentDataIntegrityFailure? map(Map<String, dynamic> json) {
    final userId = json['userId'];
    final targetId = json['targetId'];
    final targetType = json['targetType'];
    final rating = json['rating'];
    final avgRate = json['avgRate'];
    final rateCount = json['rateCount'];
    final status = json['status'];

    // Required fields
    if (userId == null) {
      return _failure('userId is null.', json);
    }
    if (targetId == null) {
      return _failure('targetId is null.', json);
    }
    if (rating == null) {
      return _failure('rating is null.', json);
    }
    if (targetType == null) {
      return _failure('targetType is null.', json);
    }

    // Required ints
    if (userId is! int) {
      return _failure('userId must be an int.', json);
    }

    if (targetId is! int) {
      return _failure('targetId must be an int.', json);
    }

    if (userId < 0 || targetId < 0) {
      return _failure(
        'userId and targetId cannot be negative.',
        json,
      );
    }

    // Required double rating
    if (rating is! num) {
      return _failure(
        'rating must be numeric.',
        json,
      );
    }

    if (rating < 0 || rating > 5) {
      return _failure(
        'rating must be between 0 and 5.',
        json,
      );
    }

    // Optional double avgRate
    if (avgRate != null && avgRate is! num) {
      return _failure(
        'avgRate must be numeric.',
        json,
      );
    }

    if (avgRate is num && avgRate < 0) {
      return _failure(
        'avgRate cannot be negative.',
        json,
      );
    }

    // Optional int rateCount
    if (rateCount != null && rateCount is! int) {
      return _failure(
        'rateCount must be int.',
        json,
      );
    }

    if (rateCount is int && rateCount < 0) {
      return _failure(
        'rateCount cannot be negative.',
        json,
      );
    }

    // Required enum
    if (targetType is! String ||
        !_isValidCommentType(targetType)) {
      return _failure(
        'targetType is invalid.',
        json,
      );
    }

    // Optional enum
    if (status != null &&
        (status is! String ||
            !_isValidCommentStatus(status))) {
      return _failure(
        'status is invalid.',
        json,
      );
    }

    return null;
  }

  static CommentDataIntegrityFailure _failure(
      String message,
      Map<String, dynamic> json,
      ) {
    return CommentDataIntegrityFailure(
      debugMessage: message,
      rawSource: jsonEncode(json),
    );
  }

  static bool _isValidCommentType(String value) =>
      CommentType.values.any((item) => item.name == value);

  static bool _isValidCommentStatus(String value) =>
      CommentStatus.values.any((item) => item.name == value);
}
