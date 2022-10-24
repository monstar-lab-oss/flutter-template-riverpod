import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template_riverpod/data/model/api/request/get_top_anime_request.dart';
import 'package:flutter_template_riverpod/data/repository/my_anime_list_repository.dart';
import 'package:flutter_template_riverpod/presentation/feature/news/models/anime_news_item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_page.g.dart';

@riverpod
MyAnimeListRepository myAnimeListRepository(MyAnimeListRepositoryRef ref) =>
    MyAnimeListRepository();

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
  if (result.data != null) {
    return result.data!
        .map(
          (animeResponse) => AnimeNewsItemModel.fromGetTopAnimeResponse(
            responseData: animeResponse,
          ),
        )
        .toList();
  } else {
    return [];
  }
}

class NewsPage extends ConsumerWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topAnime = ref.watch(
      topAnimeProvider(
        getTopAnimeRequest: const GetTopAnimeRequest(
            type: 'tv', filter: 'airing', limit: 10, page: 1),
      ),
    );
    return Column(
      children: [
        Expanded(
          child: topAnime.when(
            error: (err, stack) => Text('Err $err'),
            loading: () => const CircularProgressIndicator(),
            data: (topAnime) {
              return ListView(
                children: [
                  for (final anime in topAnime)
                    TopAnimeItemWidget(animeNewsItemModel: anime)
                ],
              );
            },
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
