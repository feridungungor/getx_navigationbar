import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Center(
        child: Text("Home Page"),
      ),
    );
  }
}
