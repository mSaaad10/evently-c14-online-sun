import 'package:evently_c14_online_sun/autentication/signIn/signIn.dart';
import 'package:evently_c14_online_sun/autentication/signUp/signUp.dart';
import 'package:evently_c14_online_sun/main_layout/main_layout.dart';
import 'package:flutter/cupertino.dart';

class RoutesManager {
  static const String signUp = "/signUp";
  static const String signIn = "/signIn";
  static const String mainLayout = "/mainLayout";

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case signUp:
        return CupertinoPageRoute(
          builder: (context) => const SignUp(),
        );
      case signIn:
        return CupertinoPageRoute(
          builder: (context) => const SignIn(),
        );
      case mainLayout:
        return CupertinoPageRoute(
          builder: (context) => const MainLayout(),
        );
    }
  }
}
