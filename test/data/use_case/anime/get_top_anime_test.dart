import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/data/api/api_client.dart';
import 'package:flutter_template_riverpod/data/model/api/request/get_top_anime_request.dart';
import 'package:flutter_template_riverpod/data/model/api/response/get_top_anime_response.dart';
import 'package:flutter_template_riverpod/data/repository/my_anime_list_repository.dart';
import 'package:flutter_template_riverpod/data/use_case/anime/get_top_anime.dart';
import 'package:flutter_template_riverpod/presentation/feature/news/models/top_anime_item_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_top_anime_test.mocks.dart';

final _mockApiClient = MockApiClient();
final _mockMyAnimeListRepository = MockMyAnimeListRepository();

@GenerateMocks([ApiClient, MyAnimeListRepository])
void main() {
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer();
  });

  test('If Response Data is Null, model list should be empty', () async {
    //Precondition
    when(
      _mockMyAnimeListRepository.getTopAnime(
        apiClient: anyNamed('apiClient'),
        getTopAnimeRequest: anyNamed('getTopAnimeRequest'),
      ),
    ).thenAnswer((_) async => const GetTopAnimeResponse(data: null));

    //Function invocation
    final result = await container.read(
      topAnimeProvider(
        apiClient: _mockApiClient,
        myAnimeListRepository: _mockMyAnimeListRepository,
        getTopAnimeRequest: const GetTopAnimeRequest(
          type: 'tv',
          filter: 'airing',
          page: 1,
          limit: 10,
        ),
      ).future,
    );

    //Expected : Empty result
    expect(result, []);
  });

  test('If Response Data is not null, model list should not be empty',
      () async {
    //Precondition
    when(
      _mockMyAnimeListRepository.getTopAnime(
        apiClient: anyNamed('apiClient'),
        getTopAnimeRequest: anyNamed('getTopAnimeRequest'),
      ),
    ).thenAnswer(
      (_) async => const GetTopAnimeResponse(
        data: [
          GetTopAnimeResponseData(
            malId: 1,
            titleEnglish: 'Anime1',
            titleJapanese: 'アニメ1',
            images: null,
          ),
          GetTopAnimeResponseData(
            malId: 2,
            titleEnglish: 'Anime2',
            titleJapanese: 'アニメ2',
            images: null,
          ),
        ],
      ),
    );

    //Function invocation
    final result = await container.read(
      topAnimeProvider(
        apiClient: _mockApiClient,
        myAnimeListRepository: _mockMyAnimeListRepository,
        getTopAnimeRequest: const GetTopAnimeRequest(
          type: 'tv',
          filter: 'airing',
          page: 1,
          limit: 10,
        ),
      ).future,
    );

    //Expected : 2 Model objects
    expect(
      result,
      [
        const TopAnimeItemModel(
          id: 1,
          titleEn: 'Anime1',
          titleJp: 'アニメ1',
          imageUrl: '',
        ),
        const TopAnimeItemModel(
          id: 2,
          titleEn: 'Anime2',
          titleJp: 'アニメ2',
          imageUrl: '',
        ),
      ],
    );
  });
}
