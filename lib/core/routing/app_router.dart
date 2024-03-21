

import 'package:flutter/material.dart';
import 'package:smart_app/core/routing/routes.dart';
import 'package:smart_app/features/home/ui/home_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());


      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Defined For ${settings.name}'),
            ),
          ),
        );
    }
  }
}
