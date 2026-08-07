import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_entity_exception.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_id_exception.dart';

class UpdateWatchHistoryByIdUseCaseBusinessRule {
  final int id;
  final WatchHistoryEntity watchHistory;

  const UpdateWatchHistoryByIdUseCaseBusinessRule(
      this.id,
      this.watchHistory,
      );

  void validate() {
    _validateId();
    _validateUpdatableFields();
    _validatePosition();
  }

  /// --------------------------------------------------
  /// id must be valid
  /// --------------------------------------------------
  void _validateId() {
    if (id <= 0) {
      throw const WatchHistoryIdInvalidException();
    }
  }

  /// --------------------------------------------------
  /// update must contain at least one updatable field
  /// --------------------------------------------------
  void _validateUpdatableFields() {
    if (watchHistory.lastPositionSeconds == null &&
        watchHistory.updatedAt == null) {
      throw const WatchHistoryNoUpdatableFieldsException();
    }
  }

  /// --------------------------------------------------
  /// last position validation
  /// --------------------------------------------------
  void _validatePosition() {
    final position = watchHistory.lastPositionSeconds;

    if (position != null && position < 0) {
      throw const WatchHistoryPositionInvalidException();
    }

    if (position != null) {
      throw const WatchHistoryPositionOverflowException();
    }
  }
}
