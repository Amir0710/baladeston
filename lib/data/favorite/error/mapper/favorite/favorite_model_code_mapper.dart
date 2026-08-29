import 'package:baladeston/data/favorite/api/error_codes/favorite/favorite_model_error_code.dart' as codes;
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/domain/validation/favorite_validation_failure.dart';

class FavoriteModelCodeMapper {
  const FavoriteModelCodeMapper();

  static final Map<String, FavoriteFailure Function()> _map = {
    codes.FavoriteModelErrorCodes.invalidUserId: () =>
        const FavoriteValidationFailure() as FavoriteFailure,
    codes.FavoriteModelErrorCodes.invalidTargetId: () =>
        const FavoriteValidationFailure() as FavoriteFailure,
    codes.FavoriteModelErrorCodes.invalidFavoriteType: () =>
        const FavoriteValidationFailure() as FavoriteFailure,
    codes.FavoriteModelErrorCodes.invalidTargetType: () =>
        const FavoriteValidationFailure() as FavoriteFailure,
  };

  static FavoriteFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
