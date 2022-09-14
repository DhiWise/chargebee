import 'package:chargebee/presentation/splash_screen/splash_screen.dart';
import 'package:chargebee/presentation/splash_screen/binding/splash_binding.dart';
import 'package:chargebee/presentation/home_screen/home_screen.dart';
import 'package:chargebee/presentation/home_screen/binding/home_binding.dart';
import 'package:chargebee/presentation/add_subscription_screen/add_subscription_screen.dart';
import 'package:chargebee/presentation/add_subscription_screen/binding/add_subscription_binding.dart';
import 'package:chargebee/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:chargebee/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String homeScreen = '/home_screen';

  static String addSubscriptionScreen = '/add_subscription_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: addSubscriptionScreen,
      page: () => AddSubscriptionScreen(),
      bindings: [
        AddSubscriptionBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
