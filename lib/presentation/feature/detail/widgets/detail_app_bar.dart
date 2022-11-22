import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/space_box.dart';

const double leadingWidth = 100;

class DetailAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const DetailAppBar({
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
    return IconButton(
      onPressed: () {
        context.pop();
      },
      icon: const Icon(Icons.arrow_back),
    );
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
