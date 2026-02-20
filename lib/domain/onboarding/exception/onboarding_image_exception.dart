import 'package:baladeston/core/constants/limits.dart';

final Limits limits = Limits();

abstract class OnboardingImageException implements Exception {
  final String message;

  const OnboardingImageException(this.message);

  @override
  String toString() => message;
}

class ImageTooLargeException extends OnboardingImageException {
  ImageTooLargeException()
      : super("Image size exceeds ${limits.maxUserImageSize}MB limit");
}

class InvalidImageFormatException extends OnboardingImageException {
  InvalidImageFormatException()
      : super('Invalid image format. Allowed formats: jpg, jpeg, png, webp');
}

class InvalidIdException extends OnboardingImageException {
  InvalidIdException()
      : super('invalid id. correct id is positive and grater than 0 ');
}
