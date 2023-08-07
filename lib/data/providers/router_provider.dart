import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../constants/routes.dart';
import '../../presentation/feature/detail/detail_screen.dart';
import '../../presentation/feature/home/home_screen.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter goRouter(ref) => GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: RoutePaths.root,
          builder: (context, state) {
            return const HomeScreen();
          },
          routes: [
            GoRoute(
              name: RouteNames.animeDetail,
              path: RoutePaths.animeDetail,
              builder: (context, state) {
                return DetailScreen(
                  id: int.parse(
                    state.pathParameters[RouteParams.animeDetailId]!,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
