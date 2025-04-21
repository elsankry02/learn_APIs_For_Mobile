import 'package:auto_route/auto_route.dart';
import 'package:learn_auth/views/login_page/login_page.dart';
import 'package:learn_auth/views/signup_page/signup_page.dart';
import 'package:learn_auth/views/welcome_page/welcome_page.dart';
import 'package:learn_auth/views/welcome_page/login_button_page.dart';

part 'router.gr.dart';

final router = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: WelcomeRoute.page, initial: true),
    AutoRoute(page: LoginButtonRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: SignupRoute.page),
  ];
}
