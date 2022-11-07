import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/model/api/request/get_top_anime_request.dart';
import '../../../data/use_case/anime/get_top_anime.dart';
import 'widgets/top_anime_item_widget.dart';

class NewsPage extends ConsumerWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topAnime = ref.watch(
      topAnimeProvider(
        getTopAnimeRequest: const GetTopAnimeRequest(
          type: 'tv',
          filter: 'airing',
          limit: 10,
          page: 1,
        ),
      ),
    );
    return Column(
      children: [
        topAnime.when(
          error: (err, stack) => Text('Err $err'),
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (topAnime) {
            return Expanded(
              child: GridView.count(
                shrinkWrap: true,
                restorationId: 'grid_view_news',
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                padding: const EdgeInsets.all(8),
                childAspectRatio: 1,
                children: [
                  for (final anime in topAnime)
                    TopAnimeItemWidget(animeNewsItemModel: anime)
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
