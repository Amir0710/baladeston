

import 'package:baladeston/data/watch_history/model/watch_history_model.dart';
import 'package:baladeston/domain/watch_history/entity/watch_history_entity.dart';

extension WatchHistoryModelMapper on WatchHistoryModel {
  WatchHistoryEntity toEntity() {
    return WatchHistoryEntity(
      userId: userId,
      videoId: videoId,
      lastPositionSeconds: lastPositionSeconds,
      updatedAt: updatedAt,
    );
  }
}

extension WatchHistoryEntityMapper on WatchHistoryEntity {
  WatchHistoryModel toModel() {
    return WatchHistoryModel(
      userId: userId,
      videoId: videoId,
      lastPositionSeconds: lastPositionSeconds,
      updatedAt: updatedAt,
    );
  }
}
