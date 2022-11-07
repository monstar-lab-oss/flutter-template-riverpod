import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repository/my_anime_list_repository.dart';

part 'my_anime_list_repository_provider.g.dart';

@riverpod
MyAnimeListRepository myAnimeListRepository(MyAnimeListRepositoryRef ref) =>
    MyAnimeListRepository();
