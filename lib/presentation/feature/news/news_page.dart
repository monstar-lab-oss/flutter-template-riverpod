import 'package:flutter/cupertino.dart';

import '../../common_widgets/base/base_page.dart';
import '../home/widgets/home_app_bar.dart';

class NewsPage extends BasePage {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends BasePageState<NewsPage> with WidgetsBindingObserver {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const HomeAppBar();
  }

  @override
  Widget buildBody(BuildContext context) {
    return const Center(child: Text('News Page'));
  }
}
