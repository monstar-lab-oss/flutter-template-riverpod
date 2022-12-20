import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/data/api/api_client.dart';
import 'package:flutter_template_riverpod/data/model/api/response/get_top_anime_response.dart';
import 'package:flutter_template_riverpod/data/providers/my_anime_list_repository_provider.dart';
import 'package:flutter_template_riverpod/data/repository/my_anime_list_repository.dart';
import 'package:flutter_template_riverpod/presentation/feature/news/top_anime_page.dart';
import 'package:flutter_template_riverpod/presentation/feature/news/widgets/top_anime_item_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'top_anime_page_test.mocks.dart';

Finder _findGridItemText(int id) =>
    find.byKey(ValueKey('GridTitleText_${id}title'));

final _mockMyAnimeListRepository = MockMyAnimeListRepository();

Future<void> _loadTopAnimePage(WidgetTester tester) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        myAnimeListRepositoryProvider
            .overrideWithValue(_mockMyAnimeListRepository)
      ],
      child: const MaterialApp(
        home: TopAnimePage(),
      ),
    ),
  );

  // Re-render.
  await tester.pump();

  // No longer loading
  expect(find.byType(CircularProgressIndicator), findsNothing);
}

@GenerateMocks([ApiClient, MyAnimeListRepository])
void main() {
  testWidgets('Should display 2 Top Anime Widgets', (tester) async {
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

    await _loadTopAnimePage(tester);

    expect(find.byType(TopAnimeItemWidget), findsNWidgets(2));
    // Assert 2 Top Anime in list
    // Find by text
    expect(find.text(' Anime1'), findsOneWidget);
    // Find by key
    expect(_findGridItemText(1), findsOneWidget);
    expect(_findGridItemText(2), findsOneWidget);
    //Two widgets are found
    final list = tester.widgetList(find.byType(TopAnimeItemWidget));
    expect(list.length, 2);
  });
}
