
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_entity.freezed.dart';

@freezed
abstract class CollectionEntity with _$CollectionEntity {
  const factory CollectionEntity({
     int? id,
    required String title,
    required String password,
     String? status,
    required DateTime createdAt,
    required DateTime lastTransaction,
    required int ownerId,
    String? thumbnailUrl,
  }) = _CollectionEntity;
}
