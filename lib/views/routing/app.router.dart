import 'package:dealsnap_customer_app/views/pages/account/account.page.dart';
import 'package:dealsnap_customer_app/views/pages/search/search.page.dart';
import 'package:flutter/material.dart';
import '../pages/splash/splash.page.dart';

// Router(Application):
class AppRouter {
  // Routes:
  static const String splashPage = "splash_page";
  static const String welcomePage = "welcome_page";
  static const String setupPage = "setup_page";
  static const String homePage = "home_page";
  static const String searchPage = "search_page";
  static const String dealDetailsPage = "deal_details_page";
  static const String brandDetailsPage = "brand_details_page";
  static const String accountPage = "account_page";

  // Methods:
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // Catching:
    try {
      // Initializing:
      Map<String, dynamic> screens = {
        // Screens:
        splashPage: MaterialPageRoute(builder: (_) => const SplashPage()),
        searchPage: MaterialPageRoute(builder: (_) => const SearchPage()),
      };
      // Returning:
      return screens[settings.name];
    } catch (exception) {
      // Throwing:
      throw Exception("The ${settings.name} Page Was Not Found!");
    }
  }
}
