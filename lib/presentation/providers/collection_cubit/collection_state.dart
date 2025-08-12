// lib/application/Collection/Collection_state.dart

import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection_state.freezed.dart';

@freezed
class CollectionState with _$CollectionState {
  const factory CollectionState.initial() = _Initial;
  const factory CollectionState.loading() = _Loading;
  const factory CollectionState.success({
    required List<CollectionEntity> collections,
    required int count,
  }) = _Success;
  const factory CollectionState.failure({
    required String message,
  }) = _Failure;
}
