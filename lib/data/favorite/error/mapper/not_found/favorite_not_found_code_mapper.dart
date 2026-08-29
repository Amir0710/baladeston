import 'package:baladeston/data/favorite/api/error_codes/not_found/favorite_not_found_error_code.dart' as codes;
import 'package:baladeston/domain/favorite/failure/base_favorite_failure.dart';
import 'package:baladeston/domain/favorite/failure/domain/not_found/favorite_not_found_failure.dart';

class FavoriteNotFoundCodeMapper {
  const FavoriteNotFoundCodeMapper();

  static final Map<String, FavoriteFailure Function()> _map = {
    codes.FavoriteNotFoundErrorCode.favoriteNotFound: () =>
        const FavoriteModelNotFoundFailure() as FavoriteFailure,
  };

  static FavoriteFailure? map(String? code) {
    if (code == null) return null;
    return _map[code]?.call();
  }
}
