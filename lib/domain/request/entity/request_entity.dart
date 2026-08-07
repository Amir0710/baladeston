import 'package:baladeston/core/enum/request/request_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_entity.freezed.dart';

@freezed
abstract class RequestEntity with _$RequestEntity {
  const factory RequestEntity({
    int? id,
    required int userId,
    required int targetId,
    RequestStatus? status,
    DateTime? expiresAt,
    DateTime? requestAt,
    String? message,
    String? response,
  }) = _RequestEntity;
}
