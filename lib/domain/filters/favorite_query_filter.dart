class FavoriteQueryFilter {
  final String type;
  final int? userId;
  final int? toggleId;
  final DateTime? interestedIn;
  final bool ascending;
  final int limit;
  final int offset;
  final String orderBy;

  FavoriteQueryFilter(
      {this.type = 'video',
      this.userId,
      this.toggleId,
      required this.interestedIn,
      this.ascending = false,
      this.limit = 20,
      this.offset = 1,
      this.orderBy = 'name'});
}
