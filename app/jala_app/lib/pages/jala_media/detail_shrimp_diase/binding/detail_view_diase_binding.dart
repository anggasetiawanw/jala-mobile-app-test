import 'package:get/get.dart';

import '../controller/detail_view_diase_controller.dart';

class DetailViewDiaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailViewDiaseController>(() => DetailViewDiaseController());
  }
}