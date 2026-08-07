import 'package:baladeston/core/enum/collection/collection/collection_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_model.freezed.dart';
part 'collection_model.g.dart';
@freezed
abstract class CollectionModel with _$CollectionModel {
  const CollectionModel._();

  const factory CollectionModel({
    int? id,
    CollectionStatus? status,
    String? thumbnailUrl,
    int? count,
    int? price ,
    String? uniqueCode,
    DateTime? lastTransaction,
    required int ownerId,
    DateTime? createdAt,
    required String title,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);
}
