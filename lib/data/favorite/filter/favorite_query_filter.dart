import 'package:baladeston/core/enum/favorite/favorite_type.dart';

class FavoriteQueryFilter {
  final int? userId;
  final int? toggleId;
  final DateTime? interestedIn;
  final FavoriteType type;

  final bool ascending;
  final int limit;
  final int offset;
  final String orderBy;

  FavoriteQueryFilter(
      {this.userId,
      this.toggleId,
      required this.type,
      required this.interestedIn,
      this.ascending = false,
      this.limit = 20,
      this.offset = 0,
      this.orderBy = 'name'});
}
