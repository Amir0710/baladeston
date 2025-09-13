import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

extension MediaQueryValues on BuildContext {
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;

  String get platformType {
    if (kIsWeb) {
      return screenWidth < 600 ? "Web Mobile" : "Web Desktop";
    } else if (Platform.isAndroid || Platform.isIOS) {
      return screenWidth < 600 ? "Phone" : "Tablet";
    } else if (Platform.isWindows) {
      return "Windows";
    } else if (Platform.isMacOS) {
      return "macOS";
    } else if (Platform.isLinux) {
      return "Linux";
    } else {
      return "Unknown";
    }
  }
}
