// class collection {
//   final int id;
//   final String title;
//   final String password;
//   final double price;
//   final String status;
//   final String? thumbnailUrl;
//   final DateTime createdAt;
//   final int ownerId;

//   const collection({
//     required this.id,
//     required this.title,
//     required this.password,
//     required this.price,
//     required this.status,
//     this.thumbnailUrl,
//     required this.createdAt,
//     required this.ownerId,
//   });
// }
// domain/entities/collection_entity.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_entity.freezed.dart';

@freezed
abstract class CollectionEntity with _$CollectionEntity {
  const factory CollectionEntity({
     int? id,
    required String title,
    required String password,
    required String status,
    required DateTime createdAt,
    required DateTime lastTransaction,
    required int ownerId,
    String? thumbnailUrl,
  }) = _CollectionEntity;
}
