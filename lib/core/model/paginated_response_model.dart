
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_response_model.freezed.dart';
part 'paginated_response_model.g.dart';

@Freezed(genericArgumentFactories: true)
class PaginatedResponseModel<T> with _$PaginatedResponseModel<T> {
  const factory PaginatedResponseModel({
    required List<T> items,
    String? nextCursor,
    @Default(false) bool isLast,
  }) = _PaginatedResponseModel<T>;

  factory PaginatedResponseModel.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) =>
      _$PaginatedResponseModelFromJson(json, fromJsonT);
}
