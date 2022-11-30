import 'package:flutter_template_riverpod/data/api/api_client.dart';
import 'package:flutter_template_riverpod/data/model/api/response/get_top_anime_response.dart';

class FakeAnimeClient implements ApiClient {
  @override
  Future<GetTopAnimeResponse> getTopAnime({
    required String type,
    required String filter,
    required int page,
    required int limit,
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
        GetTopAnimeResponseData(
          malId: 3,
          titleEnglish: 'Anime3',
          titleJapanese: 'アニメ3',
          images: null,
        ),
        GetTopAnimeResponseData(
          malId: 4,
          titleEnglish: 'Anime4',
          titleJapanese: 'アニメ4',
          images: null,
        ),
        GetTopAnimeResponseData(
          malId: 5,
          titleEnglish: 'Anime5',
          titleJapanese: 'アニメ5',
          images: null,
        ),
        GetTopAnimeResponseData(
          malId: 6,
          titleEnglish: 'Anime6',
          titleJapanese: 'アニメ6',
          images: null,
        ),
        GetTopAnimeResponseData(
          malId: 7,
          titleEnglish: 'Anime7',
          titleJapanese: 'アニメ7',
          images: null,
        ),
        GetTopAnimeResponseData(
          malId: 8,
          titleEnglish: 'Anime8',
          titleJapanese: 'アニメ8',
          images: null,
        ),
      ],
    );
  }
}
