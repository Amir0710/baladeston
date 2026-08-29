import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

  class ImageSignatureValidator {
  static Future<bool> isImageFile(XFile file) async {
    final header = await _readHeaderBytes(file, length: 16);
    if (header.isEmpty) return false;

    return _isJpeg(header) ||
        _isPng(header) ||
        _isGif(header) ||
        _isBmp(header) ||
        _isWebp(header) ||
        _isHeicOrHeif(header) ||
        _isTiff(header) ||
        _isAvif(header);
  }

  // JPEG
  static bool _isJpeg(Uint8List header) {
    return _matchesSignature(header, [0xFF, 0xD8, 0xFF]);
  }

  // PNG
  static bool _isPng(Uint8List header) {
    return _matchesSignature(
        header, [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A, 0x1A, 0x0A]);
  }

  // GIF
  static bool _isGif(Uint8List header) {
    if (!_matchesSignature(header, [0x47, 0x49, 0x46, 0x38])) return false;
    if (header.length < 6) return false;
    final version = String.fromCharCodes(header.sublist(4, 6));
    return version == '87a' || version == '89a';
  }

  // BMP
  static bool _isBmp(Uint8List header) {
    return _matchesSignature(header, [0x42, 0x4D]);
  }

  // WebP
  static bool _isWebp(Uint8List header) {
    if (header.length < 12) return false;
    final riff = String.fromCharCodes(header.sublist(0, 4));
    final webp = String.fromCharCodes(header.sublist(8, 12));
    return riff == 'RIFF' && webp == 'WEBP';
  }

  // HEIC / HEIF
  static bool _isHeicOrHeif(Uint8List header) {
    if (header.length < 12) return false;
    final box = String.fromCharCodes(header.sublist(4, 8));
    if (box != 'ftyp') return false;
    final brand = String.fromCharCodes(header.sublist(8, 12));
    const brands = {
      'heic',
      'heix',
      'hevc',
      'hevx',
      'heim',
      'heis',
      'hevm',
      'hevs',
      'mif1',
      'msf1'
    };
    return brands.contains(brand);
  }

  // AVIF
  static bool _isAvif(Uint8List header) {
    if (header.length < 12) return false;
    final box = String.fromCharCodes(header.sublist(4, 8));
    if (box != 'ftyp') return false;
    final brand = String.fromCharCodes(header.sublist(8, 12));
    return brand == 'avif' || brand == 'avis';
  }

  // TIFF
  static bool _isTiff(Uint8List header) {
    if (_matchesSignature(header, [0x49, 0x49, 0x2A, 0x00])) return true;
    return _matchesSignature(header, [0x4D, 0x4D, 0x00, 0x2A]);
  }

  static Future<Uint8List> _readHeaderBytes(XFile file,
      {required int length}) async {
    final stream = file.openRead(0, length);
    final bytes = await stream.expand((chunk) => chunk).toList();
    return Uint8List.fromList(bytes);
  }

  static bool _matchesSignature(Uint8List header, List<int> signature) {
    if (header.length < signature.length) return false;
    for (var i = 0; i < signature.length; i++) {
      if (header[i] != signature[i]) return false;
    }
    return true;
  }
}
