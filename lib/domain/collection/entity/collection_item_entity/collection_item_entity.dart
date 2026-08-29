import 'package:baladeston/core/enum/collection/collection_item/collection_item_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_item_entity.freezed.dart';

@freezed
abstract class CollectionItemEntity with _$CollectionItemEntity {
  const factory CollectionItemEntity({
    int? id,
    String? title,
    required int videoId,
    required int collectionId,
    double? avgRate,
    int? rateCount,
    int? price,
    String? thumbnailUrl,
    CollectionItemStatus? status,
    DateTime? addedAt,
    DateTime? lastTransaction,
    int? adderId,
  }) = _CollectionItemEntity;
}
