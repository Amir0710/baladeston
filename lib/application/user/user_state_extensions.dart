import 'package:baladeston/domain/entitys/user/user_entity.dart';
import 'package:baladeston/presentation/providers/user_cubit/user_state.dart';

/// 🔹 Extension helpers for checking the current state and reading fields.
///
/// Keeps Flutter UI code clean (e.g. `if (state.isLoading)`).
extension UserStateX on UserState {
  /// Returns true if the state is [_Initial].
  bool get isInitial => maybeWhen(initial: () => true, orElse: () => false);

  /// Returns true if the state is [_Loading].
  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);

  /// Returns true if the state is [_Success].
  bool get isSuccess => maybeWhen(success: (_, __) => true, orElse: () => false);

  /// Returns true if the state is [_Failure].
  bool get isFailure => maybeWhen(failure: (_) => true, orElse: () => false);

  /// Returns the list of users when available,
  /// otherwise returns `null`.
  List<UserEntity>? get userOrNull =>
      whenOrNull(success: (user, _) => user);

  /// Returns the total count of users when available,
  /// otherwise returns `null`.
  int? get countOrNull =>
      whenOrNull(success: (_, count) => count);

  /// Returns the failure message if present, otherwise `null`.
  String? get messageOrNull =>
      whenOrNull(failure: (message) => message);
}
