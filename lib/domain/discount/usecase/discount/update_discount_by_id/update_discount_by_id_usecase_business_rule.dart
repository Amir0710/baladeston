import 'package:baladeston/core/constants/limits.dart';
import 'package:baladeston/core/result/result.dart';
import 'package:baladeston/core/variable/text_content_guard.dart';
import 'package:baladeston/domain/discount/entity/discount_entity.dart';
import 'package:baladeston/domain/discount/failure/base_discount_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_entity_failure.dart';
import 'package:baladeston/domain/discount/failure/domain/validation/discount_id_failure.dart';

class UpdateDiscountByIdUsecaseBusinessRule {
  final int id;
  final DiscountEntity discount;
  static const Limits _limits = Limits();

  const UpdateDiscountByIdUsecaseBusinessRule({
    required this.id,
    required this.discount,
  });

  Result<void, DiscountFailure> validate() {
    if (id <= 0) {
      return const Result.failure(DiscountIdInvalidFailure());
    }

    return _validateEntity();
  }

  Result<void, DiscountFailure> _validateEntity() {
    // Code validation
    final code = discount.code.trim();
    if (code.isEmpty) {
      return const Result.failure(DiscountEntityMissingCodeFailure());
    }
    if (TextContentGuard.containsHtml(code)) {
      return const Result.failure(DiscountEntityCodeContainsHtmlFailure());
    }
    if (TextContentGuard.isEmojiOnly(code)) {
      return const Result.failure(DiscountEntityCodeEmojiOnlyFailure());
    }
    if (TextContentGuard.hasControlCharacters(code)) {
      return const Result.failure(DiscountEntityCodeControlCharFailure());
    }
    if (code.length < _limits.minDiscountCode) {
      return const Result.failure(DiscountEntityCodeTooShortFailure());
    }
    if (code.length > _limits.maxDiscountCode) {
      return const Result.failure(DiscountEntityCodeTooLongFailure());
    }

    // Title validation
    final title = discount.title?.trim();
    if (title != null && title.isNotEmpty) {
      if (TextContentGuard.containsHtml(title)) {
        return const Result.failure(DiscountEntityTitleContainsHtmlFailure());
      }
      if (TextContentGuard.isEmojiOnly(title)) {
        return const Result.failure(DiscountEntityTitleEmojiOnlyFailure());
      }
      if (TextContentGuard.hasControlCharacters(title)) {
        return const Result.failure(DiscountEntityTitleControlCharFailure());
      }
      if (title.length < _limits.minDiscountTitle) {
        return const Result.failure(DiscountEntityTitleTooShortFailure());
      }
      if (title.length > _limits.maxDiscountTitle) {
        return const Result.failure(DiscountEntityTitleTooLongFailure());
      }
    }

    // Amount validation
    if (discount.amount != null) {
      if (discount.amount! < _limits.minDiscountAmount ||
          discount.amount! > _limits.maxDiscountAmount) {
        return const Result.failure(DiscountEntityInvalidAmountFailure());
      }
    }

    // Percent validation
    if (discount.percent < _limits.minDiscountPercent ||
        discount.percent > _limits.maxDiscountPercent) {
      return const Result.failure(DiscountEntityInvalidPercentFailure());
    }

    // TargetId validation
    if (discount.targetId != null) {
      if (discount.targetId! <= 0) {
        return const Result.failure(DiscountTargetIdInvalidFailure());
      }
    }

    // MinOrderAmount validation
    if (discount.minOrderAmount != null) {
      if (discount.minOrderAmount! < _limits.minDiscountOrderAmount ||
          discount.minOrderAmount! > _limits.maxDiscountOrderAmount) {
        return const Result.failure(DiscountEntityInvalidMinOrderAmountFailure());
      }
    }

    // Expiration validation
    if (discount.expiresAt != null) {
      final now = DateTime.now();
      if (discount.expiresAt!.isBefore(now)) {
        return const Result.failure(DiscountEntityExpiredFailure());
      }
      final maxExpiry = now.add(Duration(days: _limits.maxDiscountValidityDays));
      if (discount.expiresAt!.isAfter(maxExpiry)) {
        return const Result.failure(DiscountEntityExpirationTooFarFailure());
      }
    }

    // MaxUse validation
    if (discount.maxUse != null) {
      if (discount.maxUse! < _limits.minDiscountMaxUse) {
        return const Result.failure(DiscountEntityInvalidMaxUseFailure());
      }
    }

    return const Result.success(null);
  }
}
