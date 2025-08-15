import 'package:baladeston/domain/entitys/video/video_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_state.freezed.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState.initial() = _Initial;
  const factory VideoState.loading() = _Loading;

  const factory VideoState.success({
    required List<VideoEntity> video,
    required int count,
  }) = _Success;

  const factory VideoState.failure({
    required String message,
  }) = _Failure;
}
