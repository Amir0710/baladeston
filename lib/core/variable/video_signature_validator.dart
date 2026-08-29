import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

class VideoSignatureValidator {

  static Future<bool> isVideoFile(XFile file) async {
    final header = await _readHeaderBytes(file, length: 16);
    if (header.isEmpty) return false;

    return _isMp4OrMov(header) ||
        _isAvi(header) ||
        _isMkv(header) ||
        _isWebm(header);
  }

  // MP4 / MOV / M4V
  static bool _isMp4OrMov(Uint8List header) {
    if (header.length < 8) return false;
    final box = String.fromCharCodes(header.sublist(4, 8));
    return box == 'ftyp';
  }

  // AVI
  static bool _isAvi(Uint8List header) {
    if (header.length < 12) return false;
    final riff = String.fromCharCodes(header.sublist(0, 4));
    final aviTag = String.fromCharCodes(header.sublist(8, 12));
    return riff == 'RIFF' && aviTag == 'AVI ';
  }

  // MKV / WebM
  static bool _isMkv(Uint8List header) {
    return _matchesSignature(header, [0x1A, 0x45, 0xDF, 0xA3]);
  }

  static bool _isWebm(Uint8List header) {
    return _matchesSignature(header, [0x1A, 0x45, 0xDF, 0xA3]);
  }

  static Future<Uint8List> _readHeaderBytes(XFile file, {required int length}) async {
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
