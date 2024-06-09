import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jala_app/pages/jala_media/home_jala_media/controller/jala_media_controller.dart';

import '../../widgets/card_shrimp_price.dart';

class ShrimpPrice extends StatelessWidget {
  const ShrimpPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    JalaMediaController controller = Get.find<JalaMediaController>();
    return ListView(
      controller: controller.scrollController,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Coba Fitur Lainnya", style: AppTextStyle.blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  AppAssets.images(
                    image: AppImages.askJala,
                    height: 100,
                    width: 270,
                  ),
                  const SizedBox(width: 8),
                  AppAssets.images(
                    image: AppImages.quizByJala,
                    height: 100,
                    width: 270,
                  ),
                ]),
              ),
            ],
          ),
        ),
        const Divider(
          color: AppColors.grey,
          thickness: 3,
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Harga Terbaru",
                style: AppTextStyle.primaryDarkBlueTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              Obx(
                () => Column(
                  children: controller.listSupplier
                      .map(
                        (supplier) => Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: CardShrimpPrice(
                            supplier: supplier,
                            size: controller.selectedSize.value,
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
