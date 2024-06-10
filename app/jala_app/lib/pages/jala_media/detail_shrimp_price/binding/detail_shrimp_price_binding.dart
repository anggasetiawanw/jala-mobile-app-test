import 'package:get/get.dart';

import '../controller/detail_shrimp_price_controller.dart';

class DetailShrimpPriceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailShrimpPriceController>(() => DetailShrimpPriceController());
  }
}