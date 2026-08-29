import 'package:baladeston/core/constants/formats.dart';
import 'package:baladeston/core/constants/limits.dart';

class VideoUrlContentGuard {
  VideoUrlContentGuard._();

  static const Formats _formats = Formats();
  static const Limits _limits = Limits();

  static Uri? _tryParse(String value) => Uri.tryParse(value);

  static bool videoStructureValidation(String value) {
    final uri = _tryParse(value);
    return uri != null && uri.isAbsolute && uri.host.isNotEmpty;
  }

  static bool videoSchemeValidation(String value) {
    final uri = _tryParse(value);
    if (uri == null) return false;
    return _formats.schemes.contains(uri.scheme.toLowerCase());
  }

  static bool videoLengthValidation(String value) {
    return value.length <= _limits.maxVideoUrlLength;
  }

  static bool videoFormatValidation(String value) {
    final uri = _tryParse(value);
    if (uri == null) return false;

    final path = uri.path.toLowerCase();
    return _formats.allowVideoFileFormats.any(path.endsWith);
  }
}
