import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controller/detail_shrimp_news_controller.dart';

class DetailShrimpNewsPage extends StatelessWidget {
  const DetailShrimpNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailShrimpNewsController());
    return Obx(() => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryBlue,
          title: Text(
            'Kabar Udang',
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
              onPressed: () => controller.shareNews(),
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
