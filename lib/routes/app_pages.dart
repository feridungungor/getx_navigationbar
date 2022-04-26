import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/account/account_binding.dart';
import 'package:getx_navigationbar/pages/account/account_page.dart';
import 'package:getx_navigationbar/pages/dashboard/dashboard_binding.dart';
import 'package:getx_navigationbar/pages/dashboard/dashboard_page.dart';
import 'package:getx_navigationbar/pages/home/home_binding.dart';
import 'package:getx_navigationbar/pages/home/home_page.dart';
import 'package:getx_navigationbar/routes/app_routes.dart';

class AppPages {
  static var List = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding()
    ),
    // GetPage(
    //   name: AppRoutes.HOME,
    //   page: () => HomePage(),
    //   binding: HomeBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.ACCOUNT,
    //   page: () => AccountPage(),
    //   binding: AccountBinding(),
    // )
  ];
}
