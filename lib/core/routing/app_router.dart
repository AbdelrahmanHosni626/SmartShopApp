import 'package:flutter/material.dart';
import 'package:smart_app/core/routing/routes.dart';
import 'package:smart_app/features/bottom_navigation_bar/ui/bottom_navigation_bar_screen.dart';
import 'package:smart_app/features/inner_screens/ui/product_details.dart';
import 'package:smart_app/features/inner_screens/ui/viewd_recently.dart';
import 'package:smart_app/features/inner_screens/ui/wishlist.dart';
import 'package:smart_app/features/login/ui/login_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      case Routes.bottomNavigationBarScreen:
        return MaterialPageRoute(builder: (_) => BottomNavigationBarScreen());

      case Routes.productDetails:
        return MaterialPageRoute(builder: (_) => const ProductDetails());

      case Routes.wishlist:
        return MaterialPageRoute(builder: (_) => const WishlistScreen());

      case Routes.viewedRecently:
        return MaterialPageRoute(builder: (_) => const ViewedRecentlyScreen());

      default:
        return null;
    }
  }
}
