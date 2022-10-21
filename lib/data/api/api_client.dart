import 'package:dio/dio.dart';
import 'package:flutter_template_riverpod/data/model/api/response/get_top_anime_response.dart';
import 'package:retrofit/retrofit.dart';

import '../model/api/request/get_top_anime_request.dart';
import 'api_paths.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApiPaths.getTopAnime)
  Future<GetTopAnimeResponse> getTopAnime(
      @Body() GetTopAnimeRequest getTopAnimeRequest);
}
