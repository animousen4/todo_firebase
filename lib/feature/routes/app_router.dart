import 'package:auto_route/auto_route.dart';
import 'package:todo_firebase/feature/home/widget/home_screen.dart';
import 'package:todo_firebase/feature/routes/widget/root_screen.dart';
import 'package:todo_firebase/feature/routes/widget/auth_screen.dart';
import 'package:todo_firebase/feature/sign_in/widget/screen/sign_in_screen.dart';
import 'package:todo_firebase/feature/sign_up/widget/screen/sign_up_screen.dart';
import 'package:todo_firebase/feature/todo/widget/todo_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RootRoute.page,
          initial: true,
          children: [
            AutoRoute(
              page: AuthRoute.page,
              children: [
                AutoRoute(page: SignInRoute.page, initial: true),
                AutoRoute(page: SignUpRoute.page),
              ],
            ),
            AutoRoute(
                page: HomeRoute.page,
                children: [AutoRoute(page: TodoRoute.page, initial: true)]),
          ],
        ),
      ];
}
