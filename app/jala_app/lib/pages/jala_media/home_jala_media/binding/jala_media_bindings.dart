import 'package:get/get.dart';

import '../controller/jala_media_controller.dart';

class JalaMediaBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JalaMediaController>(() => JalaMediaController());
  }
}