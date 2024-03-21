

import 'package:flutter/material.dart';
import 'package:smart_app/core/routing/routes.dart';
import 'package:smart_app/features/bottom_navigation_bar/ui/bottom_navigation_bar_screen.dart';
import 'package:smart_app/features/home/ui/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());


      case Routes.bottomNavigationBarScreen:
        return MaterialPageRoute(builder: (_) => BottomNavigationBarScreen());


      default:
        return null;
    }
  }
}
