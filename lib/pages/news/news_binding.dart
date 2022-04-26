import 'package:get/get.dart';
import 'package:getx_navigationbar/pages/news/news_controller.dart';

class NewsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<NewsController>(() => NewsController());
  }
}
