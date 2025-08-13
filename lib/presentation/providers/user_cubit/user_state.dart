import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;

  /// موفقیت: شامل لیست گزارش‌ها و تعداد کل
  const factory UserState.success({
    required List<UserEntity> user,
    required int count,
  }) = _Success;

  /// شکست: همراه با پیام خطا
  const factory UserState.failure({
    required String message,
  }) = _Failure;
}
