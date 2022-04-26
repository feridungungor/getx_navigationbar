import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/alerts/alerts_controller.dart';

class AlertsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AlertsController>(() => AlertsController());
  }

}