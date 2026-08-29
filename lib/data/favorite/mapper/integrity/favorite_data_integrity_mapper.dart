import 'dart:convert';

import 'package:baladeston/core/enum/favorite/favorite_type.dart';
import 'package:baladeston/core/enum/favorite/target_type.dart';
import 'package:baladeston/domain/favorite/failure/server/integration/favorite_data_integrity_failure.dart';

final class FavoriteDataIntegrityMapper {
  const FavoriteDataIntegrityMapper();

  static FavoriteDataIntegrityFailure? map(Map<String, dynamic> json) {
    final userId = json['userId'];
    final targetId = json['targetId'];
    final favoriteType = json['favoriteType'];
    final targetType = json['targetType'];

    // Required fields
    if (userId == null) {
      return _failure('userId is null.', json);
    }
    if (targetId == null) {
      return _failure('targetId is null.', json);
    }
    if (favoriteType == null) {
      return _failure('favoriteType is null.', json);
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
    if (favoriteType is! String || !_isValidFavoriteType(favoriteType)) {
      return _failure('favoriteType is invalid.', json);
    }
    if (targetType is! String || !_isValidTargetType(targetType)) {
      return _failure('targetType is invalid.', json);
    }

    return null;
  }

  static FavoriteDataIntegrityFailure _failure(
    String message,
    Map<String, dynamic> json,
  ) {
    return FavoriteDataIntegrityFailure(
      debugMessage: message,
      rawSource: jsonEncode(json),
    );
  }

  static bool _isValidFavoriteType(String value) =>
      FavoriteType.values.any((item) => item.name == value);

  static bool _isValidTargetType(String value) =>
      TargetType.values.any((item) => item.name == value);
}
