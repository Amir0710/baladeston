import 'package:baladeston/data/favorite/api/error_codes/auth/favorite_auth_error_code.dart' as codes;
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/domain/auth/favorite_authentication_failure.dart';

class FavoriteAuthCodeMapper {
  const FavoriteAuthCodeMapper();

  static final Map<String, FavoriteFailure Function()> _map = {
    codes.FavoriteAuthErrorCode.unauthorized: () =>
        const FavoriteAuthUnauthorizedFailure() as FavoriteFailure,
    codes.FavoriteAuthErrorCode.loginRequired: () =>
        const FavoriteAuthLoginRequiredFailure() as FavoriteFailure,
    codes.FavoriteAuthErrorCode.invalidCredentials: () =>
        const FavoriteAuthInvalidCredentialsFailure() as FavoriteFailure,
  };

  static FavoriteFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
