import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/image_url_content_guard.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/core/variable/video_url_content_guard.dart';
import 'package:baladeston/domain/video/entity/video_entity.dart';
import 'package:baladeston/domain/video/failure/base_video_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_entity_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_image_url_failure.dart';
import 'package:baladeston/domain/video/failure/domain/validation/video_url_failure.dart';

class CreateVideoUsecaseBusinessRule {
  final VideoEntity video;
  static const Limits _limits = Limits();

  const CreateVideoUsecaseBusinessRule({
    required this.video,
  });

  Result<void, VideoFailure> validate() {
    return _entityValidation();
  }

  Result<void, BaseVideoValidationFailure> _entityValidation() {
    // title
    final title = video.title.trim();
    if (title.isEmpty) {
      return const Result.failure(VideoEntityTitleEmptyFailure());
    }
    if (title.length > _limits.maxVideoTitle) {
      return const Result.failure(VideoEntityTitleTooLongFailure());
    }
    if (title.length < _limits.minVideoTitle) {
      return const Result.failure(VideoEntityTitleTooShortFailure());
    }
    if (TextContentGuard.containsHtml(title)) {
      return const Result.failure(VideoEntityTitleContainsHtmlFailure());
    }
    if (TextContentGuard.isEmojiOnly(title)) {
      return const Result.failure(VideoEntityTitleEmojiOnlyFailure());
    }
    if (TextContentGuard.hasControlCharacters(title)) {
      return const Result.failure(VideoEntityTitleControlCharFailure());
    }

    // description
    final description = video.description.trim();
    if (description.isEmpty) {
      return const Result.failure(VideoEntityMissingDescriptionFailure());
    }
    if (description.length < _limits.minVideoDescription) {
      return const Result.failure(VideoEntityTooShortDescriptionFailure());
    }
    if (description.length > _limits.maxVideoDescription) {
      return const Result.failure(VideoEntityTooLongDescriptionFailure());
    }
    if (TextContentGuard.hasControlCharacters(description)) {
      return const Result.failure(VideoEntityControlCharDescriptionFailure());
    }
    if (TextContentGuard.isEmojiOnly(description)) {
      return const Result.failure(VideoEntityEmojiOnlyDescriptionFailure());
    }
    if (TextContentGuard.containsHtml(description)) {
      return const Result.failure(VideoEntityContainsHtmlDescriptionFailure());
    }

    // price
    if (video.price < _limits.minVideoPrice) {
      return const Result.failure(VideoEntityPriceTooLowFailure());
    }
    if (video.price > _limits.maxVideoPrice) {
      return const Result.failure(VideoEntityPriceTooHighFailure());
    }

    // recommended age
    if (video.recommendedAge < _limits.minVideoRecommendedAge) {
      return const Result.failure(VideoEntityRecommendedAgeTooLowFailure());
    }
    if (video.recommendedAge > _limits.maxVideoRecommendedAge) {
      return const Result.failure(VideoEntityRecommendedAgeTooHighFailure());
    }

    // thumbnail
    final thumbnailUrl = video.thumbnailUrl?.trim();
    if (thumbnailUrl != null && thumbnailUrl.isNotEmpty) {
      if (!ImageUrlContentGuard.imageStructureValidation(thumbnailUrl)) {
        return const Result.failure(VideoImageUrlStructuralFailure());
      }
      if (!ImageUrlContentGuard.imageSchemeValidation(thumbnailUrl)) {
        return const Result.failure(VideoImageUrlUnsupportedSchemeFailure());
      }
      if (!ImageUrlContentGuard.imageLengthValidation(thumbnailUrl)) {
        return const Result.failure(VideoImageUrlInvalidLengthFailure());
      }
      if (!ImageUrlContentGuard.imageFormatValidation(thumbnailUrl)) {
        return const Result.failure(VideoImageUrlInvalidFormatFailure());
      }
    }

    //  video url
    final videoUrl = video.videoUrl.trim();
    if (videoUrl.isEmpty) {
      return const Result.failure(VideoUrlMissing());
    }
    if (!VideoUrlContentGuard.videoStructureValidation(videoUrl)) {
      return const Result.failure(VideoUrlStructuralFailure());
    }
    if (!VideoUrlContentGuard.videoSchemeValidation(videoUrl)) {
      return const Result.failure(VideoUrlUnsupportedSchemeFailure());
    }
    if (!VideoUrlContentGuard.videoLengthValidation(videoUrl)) {
      return const Result.failure(VideoUrlInvalidLengthFailure());
    }
    if (!VideoUrlContentGuard.videoFormatValidation(videoUrl)) {
      return const Result.failure(VideoUrlInvalidFormatFailure());
    }

    return const Result.success(null);
  }
}
