class FavoriteQueryFilter {
  final int? userId;
  final int? toggleId;
  final DateTime? interestedIn;

  final bool ascending;
  final int limit;
  final int offset;
  final String orderBy;

  final String type;


  FavoriteQueryFilter(
      { required this.type ,
      this.userId,
      this.toggleId,
      required this.interestedIn,
      this.ascending = false,
      this.limit = 20,
      this.offset = 0,
      this.orderBy = 'name'});
}
