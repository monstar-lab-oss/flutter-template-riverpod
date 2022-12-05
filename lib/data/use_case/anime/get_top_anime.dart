import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../presentation/feature/news/models/top_anime_item_model.dart';
import '../../api/api_client.dart';
import '../../model/api/request/get_top_anime_request.dart';
import '../../repository/my_anime_list_repository.dart';

part 'get_top_anime.g.dart';

@riverpod
Future<List<TopAnimeItemModel>> topAnime(
  TopAnimeRef ref, {
  required ApiClient apiClient,
  required MyAnimeListRepository myAnimeListRepository,
  required GetTopAnimeRequest getTopAnimeRequest,
}) async {
  final result = await myAnimeListRepository.getTopAnime(
    apiClient: apiClient,
    getTopAnimeRequest: getTopAnimeRequest,
  );
  if (result.data == null) {
    return [];
  } else {
    return result.data!
        .map(
          (animeResponse) => TopAnimeItemModel.fromGetTopAnimeResponse(
            responseData: animeResponse,
          ),
        )
        .toList();
  }
}
