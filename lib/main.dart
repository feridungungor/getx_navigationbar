import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigationbar/routes/app_pages.dart';
import 'package:getx_navigationbar/routes/app_routes.dart';
import 'package:getx_navigationbar/themes/app_themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Getx App",
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppPages.List,
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
