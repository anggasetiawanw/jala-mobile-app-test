import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jala_app/pages/jala_media/detail_shrimp_diase/controller/detail_view_diase_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailViewDiasePage extends StatelessWidget {
  const DetailViewDiasePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailViewDiaseController());
    return Obx(() => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryBlue,
          title: Text(
            'Info Penyakit',
            style: AppTextStyle.whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              ),
              onPressed: () => controller.shareDiases(),
            ),
          ],
        ),
        body: controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryBlue),
                ),
              )
            : WebViewWidget(controller: controller.webView)));
  }
}
