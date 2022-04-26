import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/account/account_controller.dart';

class AccountBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AccountController>(() => AccountController());
  }
}