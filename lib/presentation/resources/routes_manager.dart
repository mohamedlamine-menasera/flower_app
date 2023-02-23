import 'package:flower_app/presentation/login/login_view.dart';
import 'package:flower_app/presentation/register/register_view.dart';
import 'package:flower_app/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

import '../main/main.dart';
import '../splash/splash_view.dart';

class Routes {
  // static const String splashRoute = "/";
  static const String mainRoute = "/main";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      // case Routes.splashRoute:
      //   return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text(AppStrings.noRouteFound)),
        body: const Center(child: Text(AppStrings.noRouteFound)),
      ),
    );
  }
}
