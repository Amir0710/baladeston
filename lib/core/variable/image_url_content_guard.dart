import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';

class ImageUrlContentGuard {
  ImageUrlContentGuard._();

  static const Formats _formats = Formats();
  static const Limits _limits = Limits();

  static Uri? _tryParse(String value) => Uri.tryParse(value);

  static bool imageStructureValidation(String value) {
    final uri = _tryParse(value);
    return uri != null && uri.isAbsolute && uri.host.isNotEmpty;
  }

  static bool imageSchemeValidation(String value) {
    final uri = _tryParse(value);
    if (uri == null) return false;
    return _formats.schemes.contains(uri.scheme.toLowerCase());
  }

  static bool imageLengthValidation(String value) {

   return (value.length > _limits.maxImageUrlLength);
  }

  static bool imageFormatValidation(String value) {
    final uri = _tryParse(value);
    if (uri == null) return false;
    final path = uri.path.toLowerCase();
    return _formats.allowImageFormats.any(path.endsWith);
  }
}
