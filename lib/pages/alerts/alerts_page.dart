import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/alerts/alerts_controller.dart';

class AlertsPage extends GetView<AlertsController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(()=>Text(controller.counter.value.toString())),
            RaisedButton(onPressed: (){
              controller.artir();
            },child: Text("Artır"),)
          ],
        )
      ),
    );
  }
}