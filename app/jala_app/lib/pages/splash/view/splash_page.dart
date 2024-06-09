import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      body: Center(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AppAssets.images(
                image: AppImages.logoJala,
                width: 200,
                height: 200,
              ))),
    );
  }
}
