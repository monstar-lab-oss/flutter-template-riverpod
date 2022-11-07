import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api/api_client.dart';
import 'app_flavor_provider.dart';

part 'api_client_provider.g.dart';

@riverpod
ApiClient apiClient(ApiClientRef ref) =>
    ApiClient(Dio(), baseUrl: ref.read(appFlavorProvider).apiConfig.apiUrl);
