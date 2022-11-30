import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/data/model/api/request/get_top_anime_request.dart';
import 'package:flutter_template_riverpod/data/model/api/response/get_top_anime_response.dart';
import 'package:flutter_template_riverpod/data/repository/my_anime_list_repository.dart';

class MyAnimeListRepositoryDummy extends MyAnimeListRepository {
  @override
  Future<GetTopAnimeResponse> getTopAnime({
    required Ref ref,
    required GetTopAnimeRequest getTopAnimeRequest,
  }) async {
    return const GetTopAnimeResponse(
      data: [
        GetTopAnimeResponseData(
          malId: 1,
          titleEnglish: 'Anime1',
          titleJapanese: 'アニメ１',
          images: null,
        ),
        GetTopAnimeResponseData(
          malId: 2,
          titleEnglish: 'Anime2',
          titleJapanese: 'アニメ2',
          images: null,
        ),
      ],
    );
  }
}
