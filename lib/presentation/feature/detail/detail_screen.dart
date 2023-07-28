import 'package:flutter/cupertino.dart';

import '../../common_widgets/base/base_page_stateless.dart';
import 'widgets/detail_app_bar.dart';

class DetailScreen extends BasePageStateless {
  const DetailScreen({required this.id, Key? key}) : super(key: key);
  final int id;

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const DetailAppBar();
  }

  @override
  Widget buildBody(BuildContext context) {
    return Center(child: Text('Detail Page for $id'));
  }
}
