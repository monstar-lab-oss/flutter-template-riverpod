import 'package:flutter/material.dart';

import 'base_page_mixin.dart';

abstract class BasePageStateless extends StatelessWidget with BasePageMixin {
  const BasePageStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => buildPage(context);
}
