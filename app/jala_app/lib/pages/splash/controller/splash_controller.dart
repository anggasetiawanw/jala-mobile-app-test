import 'dart:async';

import 'package:get/get.dart';
import 'package:jala_app/routes/routes.dart';

import '../../../utils/network_service.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    runSplash();
  }

  void runSplash() {
    Timer(const Duration(seconds: 3), () async {
      NetworkApp.service.updateHeader({
        'Authorization': NetworkApp.token,
      });
      Get.toNamed(AppRoutes.jalaMedia);
    });
  }
}
