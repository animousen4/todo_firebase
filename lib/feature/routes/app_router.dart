import 'package:auto_route/auto_route.dart';
import 'package:todo_firebase/feature/home/widget/home_screen.dart';
import 'package:todo_firebase/feature/home/widget/root_screen.dart';
import 'package:todo_firebase/feature/sign_in/widget/screen/sign_in_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RootRoute.page,
          initial: true,
          children: [
            AutoRoute(page: SignInRoute.page),
            AutoRoute(page: HomeRoute.page),
          ],
        ),
      ];
}
