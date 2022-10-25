import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/api/response/get_top_anime_response.dart';

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
    final firstImage = responseData.images?.jpg?.imageUrl;
    return AnimeNewsItemModel(
      id: responseData.malId,
      titleEn: responseData.titleEnglish ?? '',
      titleJp: responseData.titleJapanese ?? '',
      imageUrl: firstImage ?? '',
    );
  }
}
