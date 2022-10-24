import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/api/request/get_top_anime_request.dart';
import '../model/api/response/get_top_anime_response.dart';
import '../providers/api_client_provider.dart';

class MyAnimeListRepository {
  Future<GetTopAnimeResponse> getTopAnime({
    required Ref ref,
    required GetTopAnimeRequest getTopAnimeRequest,
  }) async {
    return ref.read(apiClientProvider).getTopAnime(
        type: getTopAnimeRequest.type,
        page: getTopAnimeRequest.page,
        limit: getTopAnimeRequest.limit,
        filter: getTopAnimeRequest.filter);
  }
}
