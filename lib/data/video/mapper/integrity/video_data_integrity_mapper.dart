import 'dart:convert';
import 'package:baladeston/core/enum/video/video_level.dart';
import 'package:baladeston/core/enum/video/video_status.dart';
import 'package:baladeston/domain/video/failure/server/integrity/video_data_integrity_failure.dart';

final class VideoDataIntegrityMapper {
  const VideoDataIntegrityMapper();

  static VideoDataIntegrityFailure? map(Map<String, dynamic> json) {
    final id = json['id'];
    final title = json['title'];
    final description = json['description'];
    final videoUrl = json['videoUrl'];
    final thumbnailUrl = json['thumbnailUrl'];
    final status = json['status'];
    final uploadedAt = json['uploadedAt'];
    final lastTransaction = json['lastTransaction'];
    final ownerId = json['ownerId'];
    final recommendedAge = json['recommendedAge'];
    final level = json['level'];
    final price = json['price'];
    final videoDuration = json['videoDuration'];

    // Required fields
    if (videoUrl == null) return _failure('videoUrl is null.', json);
    if (recommendedAge == null) return _failure('recommendedAge is null.', json);
    if (level == null) return _failure('level is null.', json);
    if (title == null) return _failure('title is null.', json);
    if (ownerId == null) return _failure('ownerId is null.', json);
    if (description == null) return _failure('description is null.', json);
    if (price == null) return _failure('price is null.', json);

    // Required types
    if (videoUrl is! String) return _failure('videoUrl must be a string.', json);
    if (recommendedAge is! int) return _failure('recommendedAge must be an int.', json);
    if (title is! String) return _failure('title must be a string.', json);
    if (ownerId is! int) return _failure('ownerId must be an int.', json);
    if (description is! String) return _failure('description must be a string.', json);
    if (price is! int) return _failure('price must be an int.', json);

    // Optional fields
    if (id != null && (id is! int || id < 0)) return _failure('id must be a non-negative int.', json);
    if (thumbnailUrl != null && thumbnailUrl is! String) return _failure('thumbnailUrl must be a string.', json);
    if (videoDuration != null && videoDuration is! int) return _failure('videoDuration must be an int.', json);

    if (uploadedAt != null) {
      if (uploadedAt is! String || DateTime.tryParse(uploadedAt) == null) {
        return _failure('uploadedAt is not a valid date.', json);
      }
    }

    if (lastTransaction != null) {
      if (lastTransaction is! String || DateTime.tryParse(lastTransaction) == null) {
        return _failure('lastTransaction is not a valid date.', json);
      }
    }

    // Optional enums
    if (status != null && (status is! String || !_isValidStatus(status))) {
      return _failure('status is invalid.', json);
    }
    if (!_isValidLevel(level as String)) return _failure('level is invalid.', json);

    return null;
  }

  static VideoDataIntegrityFailure _failure(String message, Map<String, dynamic> json) {
    return VideoDataIntegrityFailure(
      debugMessage: message,
      rawSource: jsonEncode(json),
    );
  }

  static bool _isValidStatus(String value) => VideoStatus.values.any((e) => e.name == value);
  static bool _isValidLevel(String value) => VideoLevel.values.any((e) => e.name == value);
}
