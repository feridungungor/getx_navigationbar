import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/home/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}