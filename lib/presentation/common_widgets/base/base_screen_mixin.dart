import 'package:flutter/material.dart';

import '../../../constants/resources/colors.dart';

mixin BaseScreenMixin {
  bool get resizeToAvoidBottomInset => false;

  bool get tapOutsideHideKeyboard => false;

  bool get canPop => true;

  Color? get backgroundColor => null;

  Function(bool)? get onPopInvoked => null;

  Widget buildBody(BuildContext context);

  PreferredSizeWidget? buildAppBar(BuildContext context);

  Widget? buildBottomNavigationBar(BuildContext context) => null;

  Widget? buildBottomSheet(BuildContext context) => null;

  Widget? buildDrawer(BuildContext context) => null;

  Widget? buildEndDrawer(BuildContext context) => null;

  Widget? buildFloatActionButton(BuildContext context) => null;

  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      appBar: buildAppBar(context),
      body: PopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: GestureDetector(
          onTap: () {
            if (tapOutsideHideKeyboard) {
              _hideKeyboard(context);
            }
          },
          child: tapOutsideHideKeyboard
              ? SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: buildBody(context),
                )
              : buildBody(context),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
      bottomSheet: buildBottomSheet(context),
      drawer: buildDrawer(context),
      endDrawer: buildEndDrawer(context),
      floatingActionButton: buildFloatActionButton(context),
    );
  }

  void _hideKeyboard(BuildContext context) {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    } else {
      FocusScope.of(context).requestFocus(FocusNode());
    }
  }
}
