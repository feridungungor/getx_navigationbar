import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/account/account_page.dart';
import 'package:getx_navigationbar/pages/alerts/alerts_page.dart';
import 'package:getx_navigationbar/pages/dashboard/dashboard_controller.dart';
import 'package:getx_navigationbar/pages/home/home_page.dart';
import 'package:getx_navigationbar/pages/news/news_page.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller){
      return Scaffold(
        body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomePage(),
                NewsPage(),
                AlertsPage(),
                AccountPage(),
              ],
            )
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Home'
            ),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.sportscourt,
                label: 'News'
            ),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.bell,
                label: 'Alerts'
            ),
            _bottomNavigationBarItem(
                icon: CupertinoIcons.person,
                label: 'Account'
            ),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
        icon: Icon(icon), label: label);
  }
}
