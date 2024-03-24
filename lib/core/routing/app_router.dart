import 'package:flutter/material.dart';
import 'package:smart_app/core/routing/routes.dart';
import 'package:smart_app/features/bottom_navigation_bar/ui/bottom_navigation_bar_screen.dart';
import 'package:smart_app/features/inner_screens/ui/product_details.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.bottomNavigationBarScreen:
        return MaterialPageRoute(builder: (_) => BottomNavigationBarScreen());

      case Routes.productDetails:
        return MaterialPageRoute(builder: (_) => const ProductDetails());

      default:
        return null;
    }
  }
}
