import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';
import 'package:baladeston/domain/watch_history/exception/watch_history_entity_exception.dart';

class CreateWatchHistoryUseCaseBusinessRule {
  final WatchHistoryEntity entity;

  const CreateWatchHistoryUseCaseBusinessRule(this.entity);

  void validate() {
    _validateRequiredFields();
    _validateValues();
    _validateBusinessConstraints();
  }

  /// --------------------------------------------------
  /// Required fields
  /// --------------------------------------------------

  void _validateRequiredFields() {
    if (entity.userId <= 0) {
      throw const WatchHistoryUserRequiredException();
    }

    if (entity.videoId <= 0) {
      throw const WatchHistoryVideoRequiredException();
    }
  }

  /// --------------------------------------------------
  /// Value & format validations
  /// --------------------------------------------------

  void _validateValues() {
    final position = entity.lastPositionSeconds;

    if (position != null && position < 0) {
      throw const WatchHistoryPositionInvalidException();
    }
  }

  /// --------------------------------------------------
  /// Business constraints
  /// --------------------------------------------------

  void _validateBusinessConstraints() {
    /// Create usecase does NOT allow updatedAt from client
    /// (it must be set by persistence layer)
    ///
    /// If you later want to allow it → move this rule
    if (entity.updatedAt != null) {
      throw const WatchHistoryNoUpdatableFieldsException();
    }
  }
}
