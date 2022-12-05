import '../api/api_client.dart';
import '../model/api/request/get_top_anime_request.dart';
import '../model/api/response/get_top_anime_response.dart';

class MyAnimeListRepository {
  Future<GetTopAnimeResponse> getTopAnime({
    required ApiClient apiClient,
    required GetTopAnimeRequest getTopAnimeRequest,
  }) async {
    return apiClient.getTopAnime(
      type: getTopAnimeRequest.type,
      page: getTopAnimeRequest.page,
      limit: getTopAnimeRequest.limit,
      filter: getTopAnimeRequest.filter,
    );
  }
}
