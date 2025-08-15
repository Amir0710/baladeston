

import 'package:baladeston/data/models/watch_history/watch_history_model.dart';
import 'package:baladeston/domain/entitys/watch_history/watch_history_entity.dart';

extension WatchHistoryModelMapper on WatchHistoryModel {
  WatchHistoryEntity toEntity() {
    return WatchHistoryEntity(
      userId: userId,
      videoId: videoId,
      lastPositionSeconds: lastPositionSeconds,
      updatedAt: updatedAt, id: id,
    );
  }
}

extension WatchHistoryEntityMapper on WatchHistoryEntity {
  WatchHistoryModel toModel() {
    return WatchHistoryModel(
      id : id ,
      userId: userId,
      videoId: videoId,
      lastPositionSeconds: lastPositionSeconds,
      updatedAt: updatedAt,
    );
  }
}
