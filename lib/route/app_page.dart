import 'package:ecommerce/route/app_route.dart';
import 'package:ecommerce/screens/dashboard/dashboard_binding.dart';
import 'package:ecommerce/screens/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';

class AppPage {
  static var list = [
    GetPage(
      name: AppRoute.dashboard,
      page: () => DashboardScreen(),
      binding: DashboardBinding(),
    ),
  ];
}
