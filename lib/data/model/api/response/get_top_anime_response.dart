import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_top_anime_response.freezed.dart';
part 'get_top_anime_response.g.dart';

// Produced using Freezed Model Generator : https://marketplace.visualstudio.com/items?itemName=SushanShakya.freezed-model-gen

@freezed
class GetTopAnimeResponse with _$GetTopAnimeResponse {
  const factory GetTopAnimeResponse({
    Pagination? pagination,
    List<GetTopAnimeResponseData>? data,
    Links? links,
    Meta? meta,
  }) = _GetTopAnimeResponse;

  factory GetTopAnimeResponse.fromJson(Map<String, dynamic> json) =>
      _$GetTopAnimeResponseFromJson(json);
}

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: 'last_visible_page') int? lastVisiblePage,
    @JsonKey(name: 'has_next_page') bool? hasNextPage,
    @JsonKey(name: 'current_page') int? currentPage,
    Items? items,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
class Items with _$Items {
  const factory Items({
    int? count,
    int? total,
    @JsonKey(name: 'per_page') int? perPage,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class GetTopAnimeResponseData with _$GetTopAnimeResponseData {
  const factory GetTopAnimeResponseData({
    @JsonKey(name: 'mal_id') required int malId,
    String? url,
    Images? images,
    Trailer? trailer,
    bool? approved,
    List<Titles>? titles,
    String? title,
    @JsonKey(name: 'title_english') String? titleEnglish,
    @JsonKey(name: 'title_japanese') String? titleJapanese,
    @JsonKey(name: 'title_synonyms') List<String>? titleSynonyms,
    String? type,
    String? source,
    int? episodes,
    String? status,
    bool? airing,
    Aired? aired,
    String? duration,
    String? rating,
    double? score,
    @JsonKey(name: 'scored_by') int? scoredBy,
    int? rank,
    int? popularity,
    int? members,
    int? favorites,
    String? synopsis,
    String? background,
    String? season,
    int? year,
    Broadcast? broadcast,
    List<Producers>? producers,
    List<Licensors>? licensors,
    List<Studios>? studios,
    List<Genres>? genres,
    @JsonKey(name: 'explicit_genres') List<dynamic>? explicitGenres,
    List<Themes>? themes,
    List<Demographics>? demographics,
  }) = _GetTopAnimeResponseData;

  factory GetTopAnimeResponseData.fromJson(Map<String, dynamic> json) =>
      _$GetTopAnimeResponseDataFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({
    Jpg? jpg,
    Webp? webp,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}

@freezed
class Jpg with _$Jpg {
  const factory Jpg({
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'small_image_url') String? smallImageUrl,
    @JsonKey(name: 'large_image_url') String? largeImageUrl,
  }) = _Jpg;

  factory Jpg.fromJson(Map<String, dynamic> json) => _$JpgFromJson(json);
}

@freezed
class Webp with _$Webp {
  const factory Webp({
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'small_image_url') String? smallImageUrl,
    @JsonKey(name: 'large_image_url') String? largeImageUrl,
  }) = _Webp;

  factory Webp.fromJson(Map<String, dynamic> json) => _$WebpFromJson(json);
}

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    @JsonKey(name: 'youtube_id') String? youtubeId,
    String? url,
    @JsonKey(name: 'embed_url') String? embedUrl,
    TrailerImages? images,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}

@freezed
class TrailerImages with _$TrailerImages {
  const factory TrailerImages({
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'small_image_url') String? smallImageUrl,
    @JsonKey(name: 'medium_image_url') String? mediumImageUrl,
    @JsonKey(name: 'large_image_url') String? largeImageUrl,
    @JsonKey(name: 'maximum_image_url') String? maximumImageUrl,
  }) = _TrailerImages;

  factory TrailerImages.fromJson(Map<String, dynamic> json) =>
      _$TrailerImagesFromJson(json);
}

@freezed
class Titles with _$Titles {
  const factory Titles({
    String? type,
    String? title,
  }) = _Titles;

  factory Titles.fromJson(Map<String, dynamic> json) => _$TitlesFromJson(json);
}

@freezed
class Aired with _$Aired {
  const factory Aired({
    DateTime? from,
    DateTime? to,
    Prop? prop,
    String? string,
  }) = _Aired;

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);
}

@freezed
class Prop with _$Prop {
  const factory Prop({
    From? from,
    To? to,
  }) = _Prop;

  factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);
}

@freezed
class From with _$From {
  const factory From({
    int? day,
    int? month,
    int? year,
  }) = _From;

  factory From.fromJson(Map<String, dynamic> json) => _$FromFromJson(json);
}

@freezed
class To with _$To {
  const factory To({
    int? day,
    int? month,
    int? year,
  }) = _To;

  factory To.fromJson(Map<String, dynamic> json) => _$ToFromJson(json);
}

@freezed
class Broadcast with _$Broadcast {
  const factory Broadcast({
    String? day,
    String? time,
    String? timezone,
    String? string,
  }) = _Broadcast;

  factory Broadcast.fromJson(Map<String, dynamic> json) =>
      _$BroadcastFromJson(json);
}

@freezed
class Producers with _$Producers {
  const factory Producers({
    @JsonKey(name: 'mal_id') int? malId,
    String? type,
    String? name,
    String? url,
  }) = _Producers;

  factory Producers.fromJson(Map<String, dynamic> json) =>
      _$ProducersFromJson(json);
}

@freezed
class Licensors with _$Licensors {
  const factory Licensors({
    @JsonKey(name: 'mal_id') int? malId,
    String? type,
    String? name,
    String? url,
  }) = _Licensors;

  factory Licensors.fromJson(Map<String, dynamic> json) =>
      _$LicensorsFromJson(json);
}

@freezed
class Studios with _$Studios {
  const factory Studios({
    @JsonKey(name: 'mal_id') int? malId,
    String? type,
    String? name,
    String? url,
  }) = _Studios;

  factory Studios.fromJson(Map<String, dynamic> json) =>
      _$StudiosFromJson(json);
}

@freezed
class Genres with _$Genres {
  const factory Genres({
    @JsonKey(name: 'mal_id') int? malId,
    String? type,
    String? name,
    String? url,
  }) = _Genres;

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}

@freezed
class Themes with _$Themes {
  const factory Themes({
    @JsonKey(name: 'mal_id') int? malId,
    String? type,
    String? name,
    String? url,
  }) = _Themes;

  factory Themes.fromJson(Map<String, dynamic> json) => _$ThemesFromJson(json);
}

@freezed
class Demographics with _$Demographics {
  const factory Demographics({
    @JsonKey(name: 'mal_id') int? malId,
    String? type,
    String? name,
    String? url,
  }) = _Demographics;

  factory Demographics.fromJson(Map<String, dynamic> json) =>
      _$DemographicsFromJson(json);
}

@freezed
class Links with _$Links {
  const factory Links({
    String? first,
    String? last,
    String? prev,
    String? next,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'current_page') int? currentPage,
    int? from,
    @JsonKey(name: 'last_page') int? lastPage,
    List<MetaLinks>? links,
    String? path,
    @JsonKey(name: 'per_page') int? perPage,
    int? to,
    int? total,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class MetaLinks with _$MetaLinks {
  const factory MetaLinks({
    String? url,
    String? label,
    bool? active,
  }) = _MetaLinks;

  factory MetaLinks.fromJson(Map<String, dynamic> json) =>
      _$MetaLinksFromJson(json);
}
