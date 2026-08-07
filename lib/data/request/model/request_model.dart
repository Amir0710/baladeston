import 'package:baladeston/core/enum/request/request_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_model.freezed.dart';

part 'request_model.g.dart';

@freezed
abstract class RequestModel with _$RequestModel {
  const factory RequestModel({
    int? id,

    required int userId,
    required int targetId,
    RequestStatus? status,
    DateTime? expiresAt,
    DateTime? requestAt,
    String? message ,
    String? response ,

  }) = _RequestModel;

  factory RequestModel.fromJson(Map<String, dynamic> json) =>
      _$RequestModelFromJson(json);
}
