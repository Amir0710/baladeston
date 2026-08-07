import 'package:baladeston/data/collection/api/error_codes/auth/collection_access_error_code.dart'
    as codes;
import 'package:baladeston/domain/collection/failure/base_collection_failure.dart';
import 'package:baladeston/domain/collection/failure/domain/auth/collection_authorization_failure.dart';

class CollectionAccessCodeMapper {
  const CollectionAccessCodeMapper();

  static final Map<String, CollectionFailure Function()> _map = {
    codes.CollectionAccessErrorCodes.forbidden: () =>
        const AccessForbiddenFailure() as CollectionFailure,
    codes.CollectionAccessErrorCodes.adminRequired: () =>
        const AccessAdminRequiredFailure() as CollectionFailure,
    codes.CollectionAccessErrorCodes.moderatorRequired: () =>
        const AccessModeratorRequiredFailure() as CollectionFailure,
    codes.CollectionAccessErrorCodes.premiumRequired: () =>
        const AccessPremiumRequiredFailure() as CollectionFailure,
    codes.CollectionAccessErrorCodes.notOwner: () =>
        const AccessNotOwnerFailure() as CollectionFailure,
    codes.CollectionAccessErrorCodes.resourcePrivate: () =>
        const AccessResourcePrivateFailure() as CollectionFailure,
    codes.CollectionAccessErrorCodes.operationNotAllowed: () =>
        const AccessOperationNotAllowedFailure() as CollectionFailure,
  };

  static CollectionFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
