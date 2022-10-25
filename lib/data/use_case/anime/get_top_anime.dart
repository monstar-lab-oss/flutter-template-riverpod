import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../presentation/feature/news/models/anime_news_item_model.dart';
import '../../model/api/request/get_top_anime_request.dart';
import '../../providers/my_anime_list_repository_provider.dart';

part 'get_top_anime.g.dart';

@riverpod
Future<List<AnimeNewsItemModel>> topAnime(
  TopAnimeRef ref, {
  required GetTopAnimeRequest getTopAnimeRequest,
}) async {
  final myAnimeListRepository = ref.watch(myAnimeListRepositoryProvider);
  final result = await myAnimeListRepository.getTopAnime(
    ref: ref,
    getTopAnimeRequest: getTopAnimeRequest,
  );
  if (result.data == null) {
    return [];
  } else {
    return result.data!
        .map(
          (animeResponse) => AnimeNewsItemModel.fromGetTopAnimeResponse(
            responseData: animeResponse,
          ),
        )
        .toList();
  }
}
