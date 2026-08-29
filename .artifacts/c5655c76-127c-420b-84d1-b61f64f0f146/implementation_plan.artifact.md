# Implement Robust API Architecture for Collection

This plan aims to align the `Collection` and `CollectionItem` API implementations with the robust architecture used in the `Category` module. This includes adding data integrity checks, improved error handling, and silent skipping of corrupt items in list responses.

## Proposed Changes

### Data Mappers (Integrity Checks)

#### [NEW] [collection_data_integrity_mapper.dart](file:///C:/personal/folder/code/baladeston/lib/data/collection/mapper/model/integrity/collection_data_integrity_mapper.dart)
Implement integrity checks for `CollectionModel` fields (title, description, ownerId, etc.).

#### [NEW] [collection_item_data_integrity_mapper.dart](file:///C:/personal/folder/code/baladeston/lib/data/collection/mapper/item/integrity/collection_item_data_integrity_mapper.dart)
Implement integrity checks for `CollectionItemModel` fields (videoId, collectionId, adderId, etc.).

### Data Sources (API Implementation)

#### [MODIFY] [collection_api_implementation.dart](file:///C:/personal/folder/code/baladeston/lib/data/collection/datasource/remote/collection_remote_datasource/collection_api_implementation.dart)
Update methods to:
- Use `CollectionDataIntegrityMapper`.
- Handle `DioException` and parsing errors consistently.
- Implement silent skipping for corrupt items in `getCollectionByFilter` and `getAllCollection` (if exists).
- Add `_logCorruptItem` for debugging.

#### [MODIFY] [collection_item_api_implementation.dart](file:///C:/personal/folder/code/baladeston/lib/data/collection/datasource/remote/collection_item_remote_datasource/collection_item_api_implementation.dart)
Update methods to:
- Use `CollectionItemDataIntegrityMapper`.
- Handle `DioException` and parsing errors consistently.
- Implement silent skipping for corrupt items in list responses.
- Add `_logCorruptItem` for debugging.

## Verification Plan

### Automated Tests
- I will check if there are existing tests for `Category` API and try to replicate them for `Collection`.
- Manual inspection of the code to ensure it matches the `Category` pattern exactly.

### Manual Verification
- Verify that the project builds successfully after these changes.
