import 'package:baladeston/core/enum/report_status.dart';
import 'package:baladeston/core/enum/report_type.dart';

class ReportQueryFilter {
  final int? id;
  final String? searchTerm;
  final int? userId;
  final int? targetId;
  final DateTime? reportedAt;
  final DateTime? responseAt;
  final ReportStatus? status;
  final ReportType? type;

  final int limit;
  final int offset;
  final bool ascending;
  final String orderBy;

  ReportQueryFilter({
    this.id,
    this.searchTerm,
    this.userId,
    this.targetId,
    this.reportedAt,
    this.responseAt,
    this.status,
    this.type,
    this.limit = 20,
    this.offset = 0,
    this.ascending = false,
    this.orderBy = 'name',
  });
}
