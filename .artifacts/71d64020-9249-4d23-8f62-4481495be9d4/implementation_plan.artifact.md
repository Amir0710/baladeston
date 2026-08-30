# Implementation Plan - Discount Module Refactoring

Refactor the Discount module to align with the established architecture (used in Category, Collection, Comment) and implement the validation rules specified in `DiscountEntity`.

## User Review Required

> [!IMPORTANT]
> The `DiscountQueryFilter` currently uses `offset`, while the `DiscountApiImplementation` and the general architecture use `cursor` for pagination. I will migrate `offset` to `cursor` in the filter to match other modules.

## Proposed Changes

### Core Configuration

#### [MODIFY] [limits.dart](file:///C:/personal/folder/code/baladeston/lib/core/constants/limits.dart)
Add specific limits for Discount:
- `minDiscountCode`, `maxDiscountCode`
- `minDiscountTitle`, `maxDiscountTitle`
- `minDiscountAmount`, `maxDiscountAmount`
- `minDiscountPercent` (0), `maxDiscountPercent` (100)
- `minDiscountOrderAmount`, `maxDiscountOrderAmount`
- `maxDiscountValidityDays` (365)
- `minDiscountMaxUse` (1)
- `minDiscountFilterSearchTermLength`, `maxDiscountFilterSearchTermLength`

---

### Domain Layer (Discount)

#### [NEW] [discount_validation_failure.dart](file:///C:/personal/folder/code/baladeston/lib/domain/discount/failure/domain/validation/discount_validation_failure.dart)
Define all validation failures for Discount based on the rules in `DiscountEntity`:
- `DiscountCodeTooShortFailure`, `DiscountCodeTooLongFailure`, `DiscountCodeInvalidContentFailure`
- `DiscountTitleTooShortFailure`, `DiscountTitleTooLongFailure`, `DiscountTitleInvalidContentFailure`
- `DiscountInvalidAmountFailure`, `DiscountInvalidPercentFailure`
- `DiscountInvalidTargetIdFailure`
- `DiscountInvalidMinOrderAmountFailure`
- `DiscountExpirationTooFarFailure`, `DiscountExpiredFailure`
- `DiscountInvalidMaxUseFailure`

#### [MODIFY] [create_discount_usecase_business_rule.dart](file:///C:/personal/folder/code/baladeston/lib/domain/discount/usecase/create_discount/create_discount_usecase_business_rule.dart)
Refactor to use the `Result` pattern and `TextContentGuard`, `Limits`, and the new failure classes.

#### [NEW] [update_discount_usecase_business_rule.dart](file:///C:/personal/folder/code/baladeston/lib/domain/discount/usecase/update_discount_by_id/update_discount_usecase_business_rule.dart)
Implement business rules for updating discounts.

---

### Data Layer (Discount)

#### [MODIFY] [discount_query_filter.dart](file:///C:/personal/folder/code/baladeston/lib/data/discount/filter/discount/discount_query_filter.dart)
- Change `offset` to `cursor` (String?).
- Remove `ids` from validation if it's just a list of ints, but ensure other fields match the entity rules.

#### [MODIFY] [discount_query_filter_mapper.dart](file:///C:/personal/folder/code/baladeston/lib/data/discount/mapper/discount/discount_query_filter_mapper.dart)
- Update to handle `cursor` instead of `offset`.
- Ensure `cursor` is only added if not null.
- Map `title` to `search` if that's the server convention (matching other modules).

#### [MODIFY] [discount_data_integrity_mapper.dart](file:///C:/personal/folder/code/baladeston/lib/data/discount/mapper/integrity/discount_data_integrity_mapper.dart)
Update to include all fields from `DiscountModel` and ensure they match the types and non-nullability constraints.

#### [MODIFY] [discount_api_implementation.dart](file:///C:/personal/folder/code/baladeston/lib/data/discount/datasource/remote/discount_remote_datasource/discount_api_implementation.dart)
- Ensure all methods use the correct URL paths and mapping logic.
- Verify `deletedId` mapping in `deleteDiscountById`.

---

## Verification Plan

### Automated Tests
- I will create a scratch script to verify the `DiscountDataIntegrityMapper` with various JSON payloads.
- I will verify the `DiscountQueryFilterMapper` outputs the correct query parameters.

### Manual Verification
- Verify that the code compiles and matches the architectural patterns of `CollectionItemApiImplementation`.
