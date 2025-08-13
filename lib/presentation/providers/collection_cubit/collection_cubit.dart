import 'package:baladeston/domain/entitys/collection/collection_entity.dart';
import 'package:baladeston/domain/filters/collection_query_filter.dart';
import 'package:baladeston/domain/usecase/collection/count_all_collections_usecase.dart';
import 'package:baladeston/domain/usecase/collection/create_collections_usecase.dart';
import 'package:baladeston/domain/usecase/collection/delete_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/collection/delete_collection_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/collection/get_collection_by_filter_usecase.dart';
import 'package:baladeston/domain/usecase/collection/get_collection_by_id_usecase.dart';
import 'package:baladeston/domain/usecase/collection/update_collection_usecase.dart';
import 'package:baladeston/presentation/providers/collection_cubit/collection_state.dart';
import 'package:bloc/bloc.dart';

class CollectionCubit extends Cubit<CollectionState> {
  final CreateCollectionUseCase _createUseCase;
  final UpdateCollectionUseCase _updateUseCase;
  final CountAllCollectionUseCase _countUseCase;
  final DeleteCollectionByIdUseCase _deleteByIdUseCase;
  final DeleteCollectionByFilterUseCase _deleteByFilterUseCase;
  final GetCollectionByFilterUseCase _getByFilterUseCase;
  final GetCollectionByIdUseCase _getByIdUseCase;

  CollectionCubit({
    required CreateCollectionUseCase createUseCase,
    required UpdateCollectionUseCase updateUseCase,
    required CountAllCollectionUseCase countUseCase,
    required DeleteCollectionByIdUseCase deleteByIdUseCase,
    required DeleteCollectionByFilterUseCase deleteByFilterUseCase,
    required GetCollectionByFilterUseCase getByFilterUseCase,
    required GetCollectionByIdUseCase getByIdUseCase,
  })  : _createUseCase = createUseCase,
        _updateUseCase = updateUseCase,
        _countUseCase = countUseCase,
        _deleteByIdUseCase = deleteByIdUseCase,
        _deleteByFilterUseCase = deleteByFilterUseCase,
        _getByFilterUseCase = getByFilterUseCase,
        _getByIdUseCase = getByIdUseCase,
        super(const CollectionState.initial());

  Future<void> loadCollections(CollectionQueryFilter filter) async {
    emit(const CollectionState.loading());
    try {
      final collections = await _getByFilterUseCase(filter: filter) ?? [];
      final count = await _countUseCase(filter: filter);
      emit(CollectionState.success(collections: collections, count: count));
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }

  Future<void> loadCollectionById(int id) async {
    emit(const CollectionState.loading());
    try {
      final collection = await _getByIdUseCase(id: id);
      if (collection != null) {
        emit(CollectionState.success(collections: [collection], count: 1));
      } else {
        emit(const CollectionState.failure(message: 'Collection not found'));
      }
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }

  Future<void> addCollection(CollectionEntity collection, CollectionQueryFilter refreshFilter) async {
    emit(const CollectionState.loading());
    try {
      await _createUseCase(collection);
      await loadCollections(refreshFilter);
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }

  Future<void> updateCollection(CollectionEntity collection, CollectionQueryFilter refreshFilter) async {
    emit(const CollectionState.loading());
    try {
      await _updateUseCase(collection);
      await loadCollections(refreshFilter);
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }

  Future<void> deleteCollectionById(int id, CollectionQueryFilter refreshFilter) async {
    emit(const CollectionState.loading());
    try {
      await _deleteByIdUseCase(id: id);
      await loadCollections(refreshFilter);
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }

  Future<void> deleteCollectionsByFilter(CollectionQueryFilter filter, CollectionQueryFilter refreshFilter) async {
    emit(const CollectionState.loading());
    try {
      await _deleteByFilterUseCase(filter: filter);
      await loadCollections(refreshFilter);
    } catch (e) {
      emit(CollectionState.failure(message: e.toString()));
    }
  }
}
