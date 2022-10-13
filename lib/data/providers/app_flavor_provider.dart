import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main/app_flavor.dart';
import '../api/api_config.dart';

final appFlavorProvider = Provider<AppFlavor>(
  (ref) => AppFlavor(
    apiConfig: ApiConfig(''),
    appFlavorType: AppFlavorType.development,
  ),
);
