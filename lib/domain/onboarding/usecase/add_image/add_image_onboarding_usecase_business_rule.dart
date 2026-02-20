import 'dart:io';

import 'package:baladeston/domain/onboarding/exception/onboarding_image_exception.dart';


class AddImageOnboardingUsecaseBusiness {
  final File image;


  static const int maxSizeInBytes = 5 * 1024 * 1024;
  static const allowedExtensions = ['jpg', 'jpeg', 'png', 'webp'];

  AddImageOnboardingUsecaseBusiness({required this.image});

  void validate() {
    final size = image.lengthSync();
    final ext = image.path.split('.').last.toLowerCase();

    if (size > maxSizeInBytes) {
      throw ImageTooLargeException();
    }

    if (!allowedExtensions.contains(ext)) {
      throw InvalidImageFormatException();
    }
  }
}

