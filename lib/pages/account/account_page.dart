import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/account/account_controller.dart';

class AccountPage extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Account Page"),
      ),
    );
  }
}
