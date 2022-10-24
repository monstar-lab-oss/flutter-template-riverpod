import 'package:flutter_template_riverpod/data/model/api/response/get_top_anime_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_news_item_model.freezed.dart';

@freezed
class AnimeNewsItemModel with _$AnimeNewsItemModel {
  const factory AnimeNewsItemModel({
    required int id,
    required String titleEn,
    required String titleJp,
    required String imageUrl,
  }) = _AnimeNewsItemModel;

  factory AnimeNewsItemModel.fromGetTopAnimeResponse({
    required GetTopAnimeResponseData responseData,
  }) {
    var firstImage = responseData.images?.jpg?.image_url;
    return AnimeNewsItemModel(
      id: responseData.mal_id,
      titleEn: responseData.title_english ?? '',
      titleJp: responseData.title_japanese ?? '',
      imageUrl: firstImage ?? '',
    );
  }
}
