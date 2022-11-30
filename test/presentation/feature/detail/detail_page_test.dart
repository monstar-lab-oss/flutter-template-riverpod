import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/data/providers/my_anime_list_repository_provider.dart';
import 'package:flutter_template_riverpod/presentation/feature/news/top_anime_page.dart';
import 'package:flutter_template_riverpod/presentation/feature/news/widgets/top_anime_item_widget.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../data/providers/my_anime_list_repository_provider_dummy.dart';

Finder _gridItemText(int id) =>
    find.byKey(ValueKey('GridTitleText_${id}title'));

Future<void> _loadTopAnimePage(WidgetTester tester) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        myAnimeListRepositoryProvider
            .overrideWithValue(MyAnimeListRepositoryDummy())
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

void main() {
  testWidgets('Should display 2 Top Anime Widgets', (tester) async {
    await _loadTopAnimePage(tester);

    expect(find.byType(TopAnimeItemWidget), findsNWidgets(2));
    // Assert 2 Top Anime in list
    // Find by text
    expect(find.text(' Anime1'), findsOneWidget);
    // Find by key
    expect(_gridItemText(1), findsOneWidget);
    expect(_gridItemText(2), findsOneWidget);
    //Two widgets are found
    final list = tester.widgetList(find.byType(TopAnimeItemWidget));
    expect(list.length, 2);
  });
}
