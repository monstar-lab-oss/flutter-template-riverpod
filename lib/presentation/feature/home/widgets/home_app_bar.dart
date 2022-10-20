import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common_widgets/space_box.dart';

const double leadingWidth = 100;

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Colors.lightBlue,
      toolbarHeight: kToolbarHeight,
      elevation: 0,
      leadingWidth: leadingWidth,
      automaticallyImplyLeading: false,
      leading: buildLeftContent(context),
      centerTitle: true,
      title: buildTitle(context),
      actions: buildActions(context),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Column(
          children: [
            Container(),
          ],
        ),
      ),
    );
  }

  Widget buildLeftContent(BuildContext context) {
    return const SpaceBox();
  }

  Widget buildTitle(BuildContext context) {
    return const Text('Flutter Template');
  }

  List<Widget>? buildActions(BuildContext context) {
    return const <Widget>[SpaceBox()];
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
