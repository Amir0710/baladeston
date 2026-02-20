import 'package:freezed_annotation/freezed_annotation.dart';


part 'onboarding_token_entity.freezed.dart';

@freezed
class OnboardingTokenEntity with _$OnboardingTokenEntity {
  const factory OnboardingTokenEntity({
    required String value,
    required DateTime expiresAt,
  }) = _OnboardingTokenEntity;

  const OnboardingTokenEntity._();

  bool get isExpired => DateTime.now().isAfter(expiresAt);
}
