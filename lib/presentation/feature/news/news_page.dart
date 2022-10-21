import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/data/repository/my_anime_list_repository.dart';
import 'package:flutter_template_riverpod/presentation/feature/news/models/anime_news_item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_page.g.dart';

@riverpod
MyAnimeListRepository myAnimeListRepository(MyAnimeListRepositoryRef ref) =>
    MyAnimeListRepository();

@riverpod
List<AnimeNewsItemModel> topAnime(TopAnimeRef ref) {
  return [
    const AnimeNewsItemModel(id: 1, name: "Anime1", imageUrl: "anime1.jpg"),
    const AnimeNewsItemModel(id: 2, name: "Anime2", imageUrl: "anime2.jpg"),
  ];
}

class NewsPage extends ConsumerWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final topAnime = ref.watch(myAnimeListRepositoryProvider);
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              for (final anime in ref.watch(topAnimeProvider))
                TopAnimeItemWidget(animeNewsItemModel: anime)
            ],
          ),
        ),
      ],
    );
  }
}

class TopAnimeItemWidget extends ConsumerWidget {
  const TopAnimeItemWidget({
    required this.animeNewsItemModel,
    Key? key,
  }) : super(key: key);
  final AnimeNewsItemModel animeNewsItemModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(animeNewsItemModel.name),
        Text(animeNewsItemModel.id.toString()),
      ],
    );
  }
}
