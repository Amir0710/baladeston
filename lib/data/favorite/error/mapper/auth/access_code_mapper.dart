import 'package:baladeston/data/favorite/api/error_codes/auth/favorite_access_error_code.dart' as codes;
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/domain/auth/favorite_authorization_failure.dart';

class FavoriteAccessCodeMapper {
  const FavoriteAccessCodeMapper();

  static final Map<String, FavoriteFailure Function()> _map = {
    codes.FavoriteAccessErrorCodes.forbidden: () =>
        const FavoriteAccessForbiddenFailure() as FavoriteFailure,
    codes.FavoriteAccessErrorCodes.adminRequired: () =>
        const FavoriteAccessAdminRequiredFailure() as FavoriteFailure,
  };

  static FavoriteFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
