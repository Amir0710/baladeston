

import 'package:baladeston/data/models/report/report_model.dart';
import 'package:baladeston/domain/entitys/report/report_entity.dart';

extension ReportModelMapper on ReportModel {
  ReportEntity toEntity() {
    return ReportEntity(
      id: id,
      userId: userId,
      targetId: targetId,
      response: response,
      reason: reason,
      reportedAt: reportedAt,
      responseAt: responseAt,
    );
  }
}

extension ReportEntityMapper on ReportEntity {
  ReportModel toModel() {
    return ReportModel(
      id: id,
      userId: userId,
      targetId: targetId,
      response: response,
      reason: reason,
      reportedAt: reportedAt,
      responseAt: responseAt,
    );
  }
}
