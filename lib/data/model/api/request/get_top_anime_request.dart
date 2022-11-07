import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_top_anime_request.freezed.dart';
part 'get_top_anime_request.g.dart';

@freezed
class GetTopAnimeRequest with _$GetTopAnimeRequest {
  const factory GetTopAnimeRequest({
    required String type,
    required String filter,
    required int page,
    required int limit,
  }) = _GetTopAnimeRequest;

  factory GetTopAnimeRequest.fromJson(Map<String, dynamic> json) =>
      _$GetTopAnimeRequestFromJson(json);
}
