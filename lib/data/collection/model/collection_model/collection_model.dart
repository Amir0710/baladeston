import 'package:baladeston/core/enum/collection/collection/collection_status.dart';
import 'package:baladeston/core/enum/collection/collection/collection_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_model.freezed.dart';
part 'collection_model.g.dart';

@freezed
abstract class CollectionModel with _$CollectionModel {
  const CollectionModel._();

  const factory CollectionModel({
    int? id,
    required String title,
    required String description,
    int? ownerId,
    String? thumbnailUrl,
    CollectionStatus? status,
    CollectionType? type,
    int? count, // count of video in collection
    int? price, // calculated at the time of request
    String? uniqueCode,
    DateTime? lastTransaction,
    DateTime? createdAt,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);
}
