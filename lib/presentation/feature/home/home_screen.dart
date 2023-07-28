import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../constants/resources/colors.dart';
import '../../common_widgets/base/base_screen.dart';
import '../news/top_anime_page.dart';
import '../profile/profile_page.dart';
import 'widgets/home_app_bar.dart';

class HomeScreen extends BaseScreen {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  BaseScreenState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseScreenState<HomeScreen>
    with WidgetsBindingObserver {
  int _currentIndex = 0;
  final List _screens = [const TopAnimePage(), const ProfilePage()];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const HomeAppBar();
  }

  @override
  Widget buildBody(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: context.colors.mediumBlue,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: AppLocalizations.of(context)!.home_tab_top_anime,
            icon: const Icon(Icons.newspaper),
          ),
          BottomNavigationBarItem(
            label: AppLocalizations.of(context)!.home_tab_profile,
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
