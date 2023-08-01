import 'package:flutter/material.dart';

import 'base_screen_mixin.dart';

abstract class BaseScreenStateless extends StatelessWidget with BaseScreenMixin {
  const BaseScreenStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => buildPage(context);
}
