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
    int? last_visible_page,
    bool? has_next_page,
    int? current_page,
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
    int? per_page,
  }) = _Items;

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
}

@freezed
class GetTopAnimeResponseData with _$GetTopAnimeResponseData {
  const factory GetTopAnimeResponseData({
    required int mal_id,
    String? url,
    Images? images,
    Trailer? trailer,
    bool? approved,
    List<Titles>? titles,
    String? title,
    String? title_english,
    String? title_japanese,
    List<String>? title_synonyms,
    String? type,
    String? source,
    int? episodes,
    String? status,
    bool? airing,
    Aired? aired,
    String? duration,
    String? rating,
    double? score,
    int? scored_by,
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
    List<dynamic>? explicit_genres,
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
    String? image_url,
    String? small_image_url,
    String? large_image_url,
  }) = _Jpg;

  factory Jpg.fromJson(Map<String, dynamic> json) => _$JpgFromJson(json);
}

@freezed
class Webp with _$Webp {
  const factory Webp({
    String? image_url,
    String? small_image_url,
    String? large_image_url,
  }) = _Webp;

  factory Webp.fromJson(Map<String, dynamic> json) => _$WebpFromJson(json);
}

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    String? youtube_id,
    String? url,
    String? embed_url,
    TrailerImages? images,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) =>
      _$TrailerFromJson(json);
}

@freezed
class TrailerImages with _$TrailerImages {
  const factory TrailerImages({
    String? image_url,
    String? small_image_url,
    String? medium_image_url,
    String? large_image_url,
    String? maximum_image_url,
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
    int? mal_id,
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
    int? mal_id,
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
    int? mal_id,
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
    int? mal_id,
    String? type,
    String? name,
    String? url,
  }) = _Genres;

  factory Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
}

@freezed
class Themes with _$Themes {
  const factory Themes({
    int? mal_id,
    String? type,
    String? name,
    String? url,
  }) = _Themes;

  factory Themes.fromJson(Map<String, dynamic> json) => _$ThemesFromJson(json);
}

@freezed
class Demographics with _$Demographics {
  const factory Demographics({
    int? mal_id,
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
    int? current_page,
    int? from,
    int? last_page,
    List<MetaLinks>? links,
    String? path,
    int? per_page,
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
