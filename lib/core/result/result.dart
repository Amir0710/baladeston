import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T, F> with _$Result<T, F> {
  const factory Result.success(T data) = _Success<T, F>;
  const factory Result.failure(F failure) = _Failure<T, F>;
}
