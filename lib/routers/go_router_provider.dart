import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:zimoto_friends/routers/named.dart';
import 'package:zimoto_friends/routers/route_error_screen.dart';
import 'package:zimoto_friends/screens/favorit_screen.dart';
import 'package:zimoto_friends/screens/profile_screen.dart';
import 'package:zimoto_friends/screens/root_screen.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            name: root,
            builder: (context, state) => RootScreen(
              key: state.pageKey,
            ),
          ),
          GoRoute(
            path: '/favorit',
            name: favorit,
            builder: (context, state) => FavoritScreen(
              key: state.pageKey,
            ),
          ),
          GoRoute(
            path: '/profile',
            name: profile,
            builder: (context, state) => ProfileScreen(
              key: state.pageKey,
            ),
          ),
        ],
        errorBuilder: (context, state) => RouteErrorScreen(
              errorMsg: state.error.toString(),
            ));
  },
);
