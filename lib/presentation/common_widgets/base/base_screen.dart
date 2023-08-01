import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import 'base_screen_mixin.dart';

abstract class BaseScreen extends ConsumerStatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);
}

abstract class BaseScreenState<Page extends BaseScreen> extends ConsumerState<Page>
    with BaseScreenMixin {
  final logger = Logger();

  @override
  void initState() {
    super.initState();
    onInitState();
  }

  @override
  void dispose() {
    onDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => buildPage(context);

  @mustCallSuper
  void onInitState() {
    logger.d('Init State: $runtimeType');
  }

  @mustCallSuper
  void onDispose() {
    logger.d('Dispose: $runtimeType');
  }
}
