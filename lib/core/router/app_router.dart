import 'package:flutter/material.dart';

import '../../presentation/screens/login_screen.dart';
import '../../presentation/screens/otp_screen.dart';
import 'routes_name.dart';

class AppRouter {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case RoutesName.otpScreen:
        final phoneNumber = settings.arguments as String?;
        if (phoneNumber == null) {
          // optional: handle missing argument
          return MaterialPageRoute(
            builder: (_) => const LoginScreen(), // fallback
          );
        }
        return MaterialPageRoute(
          builder: (_) => OtpScreen(phoneNumber: phoneNumber),
        );

      default:
        // fallback route if route name is unknown
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}
