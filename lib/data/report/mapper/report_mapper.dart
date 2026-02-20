import 'package:baladeston/data/report/model/report_model.dart';
import 'package:baladeston/domain/report/entity/report_entity.dart';

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
      type: type,
      status: status,
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
        type: type,
        status: status);
  }
}
