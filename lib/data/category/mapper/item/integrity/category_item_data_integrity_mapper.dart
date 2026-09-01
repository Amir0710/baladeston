
import 'package:baladeston/domain/category/failure/base_category_failure.dart';
import 'package:baladeston/domain/category/failure/server/integration/category_data_integrity_failure.dart';

class CategoryItemDataIntegrityMapper {
  CategoryItemDataIntegrityMapper._();

  static CategoryFailure? map(Map<String, dynamic> json) {
    // Required fields
    if (json['adderId'] is! int) return _failure('adderId missing or not int', json);
    if (json['collectionId'] is! int) return _failure('collectionId missing or not int', json);
    if (json['categoryId'] is! int) return _failure('categoryId missing or not int', json);

    // Optional but typed validations
    if (json.containsKey('title') && json['title'] != null) {
      if (json['title'] is! String || (json['title'] as String).trim().isEmpty) {
        return _failure('title must be a non-empty string', json);
      }
    }

    if (json.containsKey('avgRate') && json['avgRate'] != null) {
      final rate = json['avgRate'];
      if (rate is! num || rate < 0 || rate > 5) {
        return _failure('avgRate must be between 0 and 5', json);
      }
    }

    if (json.containsKey('rateCount') && json['rateCount'] != null) {
      if (json['rateCount'] is! int || (json['rateCount'] as int) < 0) {
        return _failure('rateCount must be a non-negative int', json);
      }
    }

    if (json.containsKey('status') && json['status'] != null) {
      if (!_isValidCategoryItemStatus(json['status'])) {
        return _failure('invalid status: ${json['status']}', json);
      }
    }

    if (json.containsKey('addedAt') && json['addedAt'] != null) {
      if (DateTime.tryParse(json['addedAt'].toString()) == null) {
        return _failure('addedAt is not a valid ISO-8601 date', json);
      }
    }

    if (json.containsKey('lastTransaction') && json['lastTransaction'] != null) {
      if (DateTime.tryParse(json['lastTransaction'].toString()) == null) {
        return _failure('lastTransaction is not a valid ISO-8601 date', json);
      }
    }

    return null;
  }

  static CategoryFailure _failure(String message, Map<String, dynamic> json) =>
      CategoryDataIntegrityFailure(
        debugMessage: message,
        rawSource: json.toString(),
      );

  static bool _isValidCategoryItemStatus(dynamic value) {
    const validValues = {'ACTIVE', 'INACTIVE', 'PENDING'}; // adjust to your enum
    return value is String && validValues.contains(value);
  }
}
