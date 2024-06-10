import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jala_app/pages/jala_media/home_jala_media/view/diases_news_page.dart';
import 'package:jala_app/pages/jala_media/home_jala_media/view/shrimp_news.dart';

import '../../widgets/floating_navbar_price.dart';
import '../controller/jala_media_controller.dart';
import 'shrimp_price.dart';

class JalaMediaPage extends StatelessWidget {
  const JalaMediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final JalaMediaController controller = Get.put<JalaMediaController>(JalaMediaController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryBlue,
        title: Text(
          'Jala Media',
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
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              controller: controller.tabController,
              indicatorColor: AppColors.primaryBlue,
              labelStyle: AppTextStyle.primaryTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w700),
              unselectedLabelStyle: AppTextStyle.darkGreyTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w700),
              tabs: const [Tab(text: "Harga Udang"), Tab(text: "Kabar Udang"), Tab(text: "Penyakit")]),
          const SizedBox(height: 16),
          Obx(() => Expanded(
                child: TabBarView(
                  controller: controller.tabController,
                  children: [
                    controller.isLoadingPriceShrimp.isTrue
                        ? const Padding(
                            padding: EdgeInsets.only(left: 16, top: 16),
                            child: Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryBlue),
                              ),
                            ),
                          )
                        : Stack(
                            children: [
                              RawScrollbar(
                                thumbColor: AppColors.primaryBlue,
                                radius: const Radius.circular(8),
                                controller: controller.scrollController,
                                child: RefreshIndicator(
                                  onRefresh: () => Future.delayed(const Duration(milliseconds: 200), () {
                                    CustomSnackBar.showCustomSnackBar(
                                      title: "Info",
                                      message: "Feature For Pull To Refresh",
                                    );
                                  }),
                                  child: const ShrimpPrice(),
                                ),
                              ),
                              FloatingNavbarPrice(
                                onTapLocation: () => controller.showLocationBottomSheet(context),
                                onTapSize: () => controller.showSizeBottomSheet(context),
                                location: controller.selectedLocation.value,
                                size: controller.selectedSize.value.toString(),
                              ),
                            ],
                          ),
                    controller.isLoadingNewsShrimp.isTrue
                        ? const Padding(
                            padding: EdgeInsets.only(left: 16, top: 16),
                            child: Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryBlue),
                              ),
                            ),
                          )
                        : RawScrollbar(
                            thumbColor: AppColors.primaryBlue,
                            radius: const Radius.circular(8),
                            controller: controller.newsScrollController,
                            child: RefreshIndicator(
                              onRefresh: () => Future.delayed(const Duration(milliseconds: 200), () {
                                CustomSnackBar.showCustomSnackBar(
                                  title: "Info",
                                  message: "Feature For Pull To Refresh",
                                );
                              }),
                              child: const ShrimpNewsPage(),
                            ),
                          ),
                    controller.isLoadingDiaseShrimp.isTrue
                        ? const Padding(
                            padding: EdgeInsets.only(left: 16, top: 16),
                            child: Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryBlue),
                              ),
                            ),
                          )
                        : RawScrollbar(
                            thumbColor: AppColors.primaryBlue,
                            radius: const Radius.circular(8),
                            controller: controller.newsScrollController,
                            child: RefreshIndicator(
                              onRefresh: () => Future.delayed(const Duration(milliseconds: 200), () {
                                CustomSnackBar.showCustomSnackBar(
                                  title: "Info",
                                  message: "Feature For Pull To Refresh",
                                );
                              }),
                              child: const DiasesNewsPage(),
                            ),
                          ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
