import 'dart:convert';

import 'package:baladeston/core/enum/reaction/reaction_type.dart';
import 'package:baladeston/core/enum/reaction/target_type.dart';
import 'package:baladeston/domain/reaction/failure/server/integration/reaction_data_integrity_failure.dart';

final class ReactionDataIntegrityMapper {
  const ReactionDataIntegrityMapper();

  static ReactionDataIntegrityFailure? map(Map<String, dynamic> json) {
    final userId = json['userId'];
    final targetId = json['targetId'];
    final reactionType = json['reactionType'];
    final targetType = json['targetType'];

    // Required fields
    if (userId == null) {
      return _failure('userId is null.', json);
    }
    if (targetId == null) {
      return _failure('targetId is null.', json);
    }
    if (reactionType == null) {
      return _failure('reactionType is null.', json);
    }
    if (targetType == null) {
      return _failure('targetType is null.', json);
    }

    // Required types
    if (userId is! int) {
      return _failure('userId must be an int.', json);
    }
    if (targetId is! int) {
      return _failure('targetId must be an int.', json);
    }

    // Enum validations
    if (reactionType is! String || !_isValidReactionType(reactionType)) {
      return _failure('reactionType is invalid.', json);
    }
    if (targetType is! String || !_isValidTargetType(targetType)) {
      return _failure('targetType is invalid.', json);
    }

    return null;
  }

  static ReactionDataIntegrityFailure _failure(
    String message,
    Map<String, dynamic> json,
  ) {
    return ReactionDataIntegrityFailure(
      debugMessage: message,
      rawSource: jsonEncode(json),
    );
  }

  static bool _isValidReactionType(String value) =>
      ReactionType.values.any((item) => item.name == value);

  static bool _isValidTargetType(String value) =>
      TargetType.values.any((item) => item.name == value);
}
