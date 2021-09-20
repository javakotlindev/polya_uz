import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:polya_uz/ui/pages/app_page/app_page.dart';
import 'package:polya_uz/ui/pages/home_page/home_page.dart';
import 'package:polya_uz/ui/pages/order_page/order_page.dart';
import 'package:polya_uz/ui/pages/search_page/search_page.dart';

class AppRouteUtils {
  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: HomePage.routeName,
      page: () => HomePage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: OrderPage.routeName,
      page: () => OrderPage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: SearchPage.routeName,
      page: () => SearchPage(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppPage.routeName,
      page: () => AppPage(),
      transition: Transition.noTransition,
    ),
  ];
}
