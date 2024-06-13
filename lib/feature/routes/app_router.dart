import 'package:auto_route/auto_route.dart';
import 'package:todo_firebase/feature/auth/widget/auth_screen.dart';
import 'package:todo_firebase/feature/home/widget/home_screen.dart';
import 'package:todo_firebase/feature/home/widget/root_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RootRoute.page,
          initial: true,
          children: [
            AutoRoute(page: AuthRoute.page),
            AutoRoute(page: HomeRoute.page),
          ],
        ),
      ];
}
