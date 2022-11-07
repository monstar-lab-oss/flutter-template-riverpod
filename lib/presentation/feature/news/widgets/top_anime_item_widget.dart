import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants/resources/colors.dart';
import '../../../../constants/resources/images.dart';
import '../models/anime_news_item_model.dart';

class TopAnimeItemWidget extends ConsumerWidget {
  const TopAnimeItemWidget({
    required this.animeNewsItemModel,
    Key? key,
  }) : super(key: key);
  final AnimeNewsItemModel animeNewsItemModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridTile(
      footer: Material(
        color: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(4)),
        ),
        clipBehavior: Clip.antiAlias,
        child: GridTileBar(
          backgroundColor: AppColors.light.mediumBlack,
          title: _GridTitleText(animeNewsItemModel.titleEn),
          subtitle: _GridTitleText(animeNewsItemModel.titleJp),
        ),
      ),
      child: Material(
        color: AppColors.light.lightBlack,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        clipBehavior: Clip.antiAlias,
        child: FadeInImage.assetNetwork(
          placeholder: AppImages.loading,
          image: animeNewsItemModel.imageUrl,
        ),
      ),
    );
  }
}

/// Allow the text size to shrink to fit in the space
class _GridTitleText extends StatelessWidget {
  const _GridTitleText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(' $text'),
    );
  }
}
