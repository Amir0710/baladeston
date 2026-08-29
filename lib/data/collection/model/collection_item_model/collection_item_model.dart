import 'package:baladeston/core/enum/collection/collection_item/collection_item_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_item_model.freezed.dart';
part 'collection_item_model.g.dart';

@freezed
abstract class CollectionItemModel with _$CollectionItemModel {
  const CollectionItemModel._();

  const factory CollectionItemModel({
    int? id,
    String? title,
    required int videoId,
    required int collectionId,
    double? avgRate, // for preview from video
    int? rateCount, // for preview from video
    int? price, // for preview from video
    String? thumbnailUrl,
    CollectionItemStatus? status,
    DateTime? addedAt,
    DateTime? lastTransaction,
    int? adderId,
  }) = _CollectionItemModel;

  factory CollectionItemModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionItemModelFromJson(json);
}
