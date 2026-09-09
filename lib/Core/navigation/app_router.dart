import 'package:go_router/go_router.dart';
import 'package:workspace/Core/navigation/routes.dart';
import 'package:workspace/Features/Home/home_view.dart';
import 'package:workspace/Features/Login/login_view.dart';
import 'package:workspace/Features/Onboarding/onboarding_view.dart';
import 'package:workspace/Features/Signup/signup_view.dart';
import 'package:workspace/Features/Splash/splash_view.dart';
import 'package:workspace/Features/Welcome/welcome_view.dart';

class AppRouter {
  static GoRouter router = GoRouter(routes: routes);

  static List<GoRoute> routes = [
    //Splash View
    GoRoute(
      path: Routes.kSplashView,
      builder: ((context, state) => SplashView()),
    ),
    //Onboarding view
    GoRoute(
      path: Routes.kOnboardingView,
      builder: (context, state) => OnboardingView(),
    ),
    //welcome view
    GoRoute(
      path: Routes.kWelcomeView,
      builder: (context, state) => WelcomeView(),
    ),
    //login view
    GoRoute(path: Routes.kLoginView, builder: (context, state) => LoginView()),
    //Signup view
    GoRoute(
      path: Routes.kSignupView,
      builder: (context, state) => SignupView(),
    ),
    //Signup view
    GoRoute(path: Routes.kHomeView, builder: (context, state) => HomeView()),
  ];
}
