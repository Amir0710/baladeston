import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:baladeston/domain/entitys/collection/collection_entity.dart';

part 'collection_model.freezed.dart';
part 'collection_model.g.dart';

@freezed
abstract class CollectionModel with _$CollectionModel {
  const CollectionModel._(); 
  
  const factory CollectionModel({
    int? id,
    required String title,
    required String password,
     String? status,
    required DateTime createdAt,
    required int ownerId,
    required DateTime lastTransaction,
    String? thumbnailUrl,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);

  // ساخت مدل از Entity
  factory CollectionModel.fromEntity(CollectionEntity entity) {
    return CollectionModel(
      id: entity.id,
      title: entity.title,
      password: entity.password,
      status: entity.status,
      createdAt: entity.createdAt,
      ownerId: entity.ownerId,
      lastTransaction: entity.lastTransaction,
      thumbnailUrl: entity.thumbnailUrl,
    );
  }

  // تبدیل مدل به Entity
  CollectionEntity toEntity() {
    return CollectionEntity(
      id: id,
      title: title,
      password: password,
      status: status,
      createdAt: createdAt,
      ownerId: ownerId,
      lastTransaction: lastTransaction,
      thumbnailUrl: thumbnailUrl,
    );
  }
}
