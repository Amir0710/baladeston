
import 'package:image_picker/image_picker.dart';

abstract class AppHttpClient {
  Future<dynamic> get(Uri uri);
  Future<dynamic> post(Uri uri, {Map<String, dynamic>? body});
  Future<dynamic> put(Uri uri, {Map<String, dynamic>? body});
  Future<dynamic> delete(Uri uri);
  Future<dynamic> upload(Uri uri, {required XFile file, required String field});
}
