import 'package:flutter/material.dart';

import 'base_screen_mixin.dart';

abstract class BaseScreenStateless extends StatelessWidget with BaseScreenMixin {
  const BaseScreenStateless({super.key});

  @override
  Widget build(BuildContext context) => buildPage(context);
}
