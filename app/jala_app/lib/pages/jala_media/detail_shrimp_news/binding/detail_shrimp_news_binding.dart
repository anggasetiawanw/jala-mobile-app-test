import 'package:get/get.dart';

import '../controller/detail_shrimp_news_controller.dart';

class DetailShrimpNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailShrimpNewsController>(() => DetailShrimpNewsController());
  }
}