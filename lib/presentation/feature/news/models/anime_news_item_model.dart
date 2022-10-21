import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_news_item_model.freezed.dart';

@freezed
class AnimeNewsItemModel with _$AnimeNewsItemModel {
  const factory AnimeNewsItemModel({
    required int id,
    required String name,
    required String imageUrl,
  }) = _AnimeNewsItemModel;
}
