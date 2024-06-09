
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashBindings extends Bindings {
  SplashBindings();
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
