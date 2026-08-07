import 'dart:io';

import 'package:baladeston/config/app_config.dart';
import 'package:baladeston/data/video/api/client/video_client_api.dart';
import 'package:baladeston/data/video/datasource/remote/video_remote_datasource/video_api.dart';
import 'package:baladeston/data/video/filter/video_query_filter.dart';
import 'package:baladeston/data/video/mapper/video_query_filter_mapper.dart';
import 'package:baladeston/data/video/model/video_model.dart';

class VideoApiImplementation implements VideoApi {
  final VideoClientApi client;

  VideoApiImplementation(this.client);

  Uri _url(String path, [Map<String, String>? query]) =>
      Uri.parse('${AppConfig.apiBaseUrl}/video/$path')
          .replace(queryParameters: query);

  @override
  Future<int> countVideos({required VideoQueryFilter filter}) async {
    final result = await client.get(_url('count', filter.toQuery()));
    return (result as Map<String, dynamic>)['count'] as int;
  }

  @override
  Future<VideoModel> createVideo({required VideoModel video}) async {
    final result = await client.post(_url(''), body: video.toJson());
    return VideoModel.fromJson(result as Map<String, dynamic>);
  }

  @override
  Future<int> deleteVideoByFilter({required VideoQueryFilter filter}) async {
    final result = await client.delete(_url('filter', filter.toQuery()));
    return result;
  }

  @override
  Future<int> deleteVideoById({required int id}) async {
    final result = await client.delete(_url('$id'));
    return (result as Map<String, dynamic>)['deletedId'] as int;
  }

  @override
  Future<List<VideoModel>> getVideoByFilter({required VideoQueryFilter filter}) async {
    final result = await client.get(_url('filter', filter.toQuery()));
    return (result as List)
        .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<VideoModel> getVideoById({required int id}) async {
    final result = await client.get(_url('$id'));
    return VideoModel.fromJson(result as Map<String, dynamic>);
  }

  @override
  Future<int> updateVideoByFilter({required VideoQueryFilter filter, required VideoModel video}) async {
    final result = await client.put(
      _url('filter', filter.toQuery()),
      body: video.toJson(),
    );
    return result;
  }

  @override
  Future<VideoModel> updateVideoById({required int id, required VideoModel video}) async {
    final result = await client.put(_url('$id'), body: video.toJson());
    return VideoModel.fromJson(result as Map<String, dynamic>);
  }

  @override
  Future<String> uploadImage({required File image}) async {
    final result = await client.upload(_url('upload/image'), file: image, field: 'image');
    return (result as Map<String, dynamic>)['url'] as String;
  }

  @override
  Future<String> uploadVideo({required File video}) async {
    final result = await client.upload(_url('upload/video'), file: video, field: 'video');
    return (result as Map<String, dynamic>)['url'] as String;
  }
}
