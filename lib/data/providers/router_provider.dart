import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../constants/routes.dart';
import '../../presentation/feature/detail/detail_page.dart';
import '../../presentation/feature/home/home_page.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter goRouter(ref) => GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: RoutePaths.root,
          builder: (context, state) {
            return const HomePage();
          },
          routes: [
            GoRoute(
              name: RouteNames.animeDetail,
              path: RoutePaths.animeDetail,
              builder: (context, state) {
                return DetailPage(
                  id: int.parse(
                      state.pathParameters[RouteParams.animeDetailId]!),
                );
              },
            ),
          ],
        ),
      ],
    );
