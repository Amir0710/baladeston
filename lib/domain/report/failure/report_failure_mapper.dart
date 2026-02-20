import 'package:baladeston/core/exception/http_exception.dart';
import 'package:baladeston/core/exception/network_exception.dart';
import 'package:baladeston/core/exception/validation_exception.dart';
import 'package:baladeston/domain/report/exception/report_entity_exception.dart';
import 'package:baladeston/domain/report/exception/report_filter_exception.dart';
import 'package:baladeston/domain/report/exception/report_id_exception.dart';
import 'package:baladeston/domain/report/failure/report_failure.dart';

ReportFailure mapReportException(Object error) {
  // HTTP / Resource & Permission

  if (error is NotFoundException) {
    return const ReportNotFoundFailure();
  }

  if (error is UnauthorizedException || error is ForbiddenException) {
    return const ReportPermissionDeniedFailure();
  }

  // Domain business rules - Entity

  if (error is ReportEntityInvalidStateException) {
    return ReportInvalidStateFailure(error.toString());
  }

  if (error is ReportEntityException) {
    return ReportValidationFailure(error.toString());
  }

  // Domain validation - Filter / Id

  if (error is ReportFilterException || error is ReportIdException) {
    return ReportValidationFailure(error.toString());
  }

  // Remote validation (API 4xx / 422)

  if (error is RemoteValidationException) {
    return ReportValidationFailure(error.message);
  }

  // Network / Connectivity

  if (error is NetworkException || error is TimeoutException) {
    return const ReportNetworkFailure();
  }

  // Server / Backend

  if (error is ServerException) {
    return const ReportServerFailure();
  }

  // Fallback

  return const ReportUnknownFailure();
}
