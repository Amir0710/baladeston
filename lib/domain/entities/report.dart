class Report {
  final int id;
  final int userId;
  final int targetId;
  final String response;
  final String? reason;
  final DateTime reportedAt;
  final DateTime? responseAt;

  const Report({
    required this.id,
    required this.userId,
    required this.targetId,
    required this.response,
    this.reason,
    required this.reportedAt,
    this.responseAt,
  });
}
