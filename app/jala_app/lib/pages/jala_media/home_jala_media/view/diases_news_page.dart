import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jala_app/pages/jala_media/home_jala_media/controller/jala_media_controller.dart';
import 'package:jala_app/routes/routes.dart';

class DiasesNewsPage extends StatelessWidget {
  const DiasesNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final JalaMediaController controller = Get.find<JalaMediaController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListView(
        controller: controller.newsScrollController,
        children: [
          Text(
            'Daftar Penyakit',
            style: AppTextStyle.primaryDarkBlueTextStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          Column(
              children: controller.listDiasesNews
                  .map((diases) => GestureDetector(
                        onTap: () => Get.toNamed(AppRoutes.detailDisease, arguments: diases),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.grey,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8),
                                  ),
                                  border: Border.all(
                                    color: AppColors.grey,
                                    width: 1,
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage("https://app.jala.tech/storage/${diases.image}"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      diases.fullName ?? "",
                                      style: AppTextStyle.blackTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Container(
                                      constraints: const BoxConstraints(maxHeight: 60), // Adjust the maxHeight as needed
                                      child: Text(
                                        diases.metaDescription ?? "",
                                        style: AppTextStyle.greyTextStyle.copyWith(
                                          fontSize: 14,
                                        ),
                                        maxLines: 2, // Limit to two lines
                                        overflow: TextOverflow.ellipsis, // Show ellipsis for overflow
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          Convert.getFullDate(diases.createdAt!),
                                          style: AppTextStyle.greyTextStyle,
                                        ),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.share,
                                            color: AppColors.blackText,
                                          ),
                                          onPressed: () => controller.shareDiases(diases.id),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
