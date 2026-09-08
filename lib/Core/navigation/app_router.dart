import 'package:go_router/go_router.dart';
import 'package:workspace/Core/navigation/routes.dart';
import 'package:workspace/Features/Splash/splash_view.dart';

class AppRouter {
  static GoRouter router = GoRouter(routes: routes);

  static List<GoRoute> routes = [
    GoRoute(
      path: Routes.kSplashView,
      builder: ((context, state) => SplashView()),
    ),
  ];
}
