// lib/application/collection/collection_cubit.dart

import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';
import 'package:baladeston/domain/usecase/collection/count_all_collections_usecase.dart';
import 'package:baladeston/domain/usecase/collection/create_collections_usecase.dart';
import 'package:baladeston/domain/usecase/collection/delete_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/collection/get_collection_usecase.dart';
import 'package:baladeston/domain/usecase/collection/update_collection_usecase.dart';
import 'package:baladeston/presentation/providers/collection_cubit/collection_state.dart';
import 'package:bloc/bloc.dart';

class CollectionCubit extends Cubit<CollectionState> {
  final CreateCollectionUseCase _createUseCase;
  final UpdateCollectionUseCase _updateUseCase;
  final CountAllCollectionUseCase _countUseCase;
  final DeleteCollectionByFilterUseCase _deleteUseCase;
  final GetCollectionUseCase _getUseCase;

  CollectionCubit(
      {required CreateCollectionUseCase createUseCase,
      required UpdateCollectionUseCase updateUseCase,
      required CountAllCollectionUseCase countUseCase,
      required DeleteCollectionByFilterUseCase deleteUseCase,
      required GetCollectionUseCase getUseCase})
      : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _countUseCase = countUseCase,
        _deleteUseCase = deleteUseCase,
        _getUseCase = getUseCase,
        super(const CollectionState.initial());

  Future<void> loadCollections([CollectionQueryFilter? filter]) async {
    emit(const CollectionState.loading());
    try {
      final f = filter ?? CollectionQueryFilter();
      final collections = await _getUseCase(f);
      final count = await _countUseCase();
      emit(CollectionState.success(collections: collections, count: count));
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }

  /// ایجاد دسته‌بندی جدید
  Future<void> addCollection(CollectionEntity collection) async {
    emit(const CollectionState.loading());
    try {
      await _createUseCase(collection);
      await loadCollections();
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }

  /// ویرایش دسته‌بندی
  Future<void> updateCollection(CollectionEntity collection) async {
    emit(const CollectionState.loading());
    try {
      await _updateUseCase(collection);
      await loadCollections();
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }

  /// حذف دسته‌بندی
  Future<void> deleteCollection(int id) async {
    emit(const CollectionState.loading());
    try {
      await _deleteUseCase(id);
      await loadCollections();
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }
}
