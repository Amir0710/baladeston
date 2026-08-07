import 'package:json_annotation/json_annotation.dart';

class EnumJsonConverter<T extends Enum>
    implements JsonConverter<T?, String?> {
  const EnumJsonConverter({
    required this.values,
    this.fallback,
  });

  final List<T> values;
  final T? fallback;

  @override
  T? fromJson(String? json) {
    if (json == null) return null;

    return values.firstWhere(
          (e) => e.name == json,
      orElse: () => fallback ?? values.first,
    );
  }

  @override
  String? toJson(T? object) {
    return object?.name;
  }
}
