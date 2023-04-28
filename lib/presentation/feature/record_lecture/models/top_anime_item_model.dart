import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/model/api/response/get_top_anime_response.dart';

part 'top_anime_item_model.freezed.dart';

@freezed
class TopAnimeItemModel with _$TopAnimeItemModel {
  const factory TopAnimeItemModel({
    required int id,
    required String titleEn,
    required String titleJp,
    required String imageUrl,
  }) = _AnimeNewsItemModel;

  factory TopAnimeItemModel.fromGetTopAnimeResponse({
    required GetTopAnimeResponseData responseData,
  }) {
    final firstImage = responseData.images?.jpg?.imageUrl;
    return TopAnimeItemModel(
      id: responseData.malId,
      titleEn: responseData.titleEnglish ?? '',
      titleJp: responseData.titleJapanese ?? '',
      imageUrl: firstImage ?? '',
    );
  }
}
