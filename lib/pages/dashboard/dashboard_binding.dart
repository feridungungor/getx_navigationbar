import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/alerts/alerts_controller.dart';
import 'package:getx_navigationbar/pages/dashboard/dashboard_controller.dart';
import 'package:getx_navigationbar/pages/home/home_controller.dart';
import 'package:getx_navigationbar/pages/posts/posts_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AlertsController>(() => AlertsController());
    Get.lazyPut<PostController>(() => PostController());
  }
}
