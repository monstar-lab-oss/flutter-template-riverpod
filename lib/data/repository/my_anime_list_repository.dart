import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/data/model/api/request/get_top_anime_request.dart';
import 'package:flutter_template_riverpod/data/providers/api_client_provider.dart';

import '../model/api/response/get_top_anime_response.dart';

class MyAnimeListRepository {
  Future<GetTopAnimeResponse> getTopAnime({
    required Ref ref,
    required GetTopAnimeRequest getTopAnimeRequest,
  }) async {
    return ref.read(apiClientProvider).getTopAnime(getTopAnimeRequest);
  }
}
