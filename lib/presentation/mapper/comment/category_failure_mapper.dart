import 'package:baladeston/application/providers/category_cubit/category_state.dart';
import 'package:baladeston/domain/category/failure/domain/validation/category_failure.dart';

CategoryStateError mapCategoryFailureToStateError(
    CategoryFailure failure,
    ) {

  if (failure is CategoryNetworkFailure) {
    return CategoryStateError.network;
  }

  if (failure is CategoryTimeoutFailure) {
    return CategoryStateError.timeout;
  }

  if (failure is CategoryServerFailure) {
    return CategoryStateError.server;
  }

  if (failure is CategoryPermissionFailure) {
    return CategoryStateError.permission;
  }

  if (failure is CategoryNotFoundFailure) {
    return CategoryStateError.notFound;
  }

  if (failure is CategoryValidationFailure) {
    return CategoryStateError.validation;
  }

  return CategoryStateError.unknown;
}
