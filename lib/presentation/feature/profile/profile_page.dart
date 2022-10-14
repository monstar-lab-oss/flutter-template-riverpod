import 'package:flutter/cupertino.dart';

import '../../common_widgets/base/base_page.dart';
import '../home/widgets/home_app_bar.dart';

class ProfilePage extends BasePage {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends BasePageState<ProfilePage>
    with WidgetsBindingObserver {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const HomeAppBar();
  }

  @override
  Widget buildBody(BuildContext context) {
    return const Center(child: Text('Profile Page'));
  }
}
