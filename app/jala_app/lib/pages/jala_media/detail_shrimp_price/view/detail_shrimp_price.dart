import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jala_app/pages/jala_media/detail_shrimp_price/controller/detail_shrimp_price_controller.dart';

class DetailShrimpPricePage extends StatelessWidget {
  const DetailShrimpPricePage({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailShrimpPriceController controller = Get.put(DetailShrimpPriceController());

    Widget showPrice(String size, int? price) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  size,
                  style: AppTextStyle.blackTextStyle,
                ),
              ),
              Expanded(
                child: Text(
                  "Rp. ${price == null ? "-" : Convert.toCurrencyWithoutDecimal(price.toString(), "", ".")}",
                  style: AppTextStyle.blackTextStyle,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
        ],
      );
    }

    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryBlue,
          title: Text(
            'Harga Udang',
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
              onPressed: () => controller.shareSupplier(),
            ),
          ],
        ),
        body: controller.isLoading.isTrue
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView(
                controller: controller.scrollController,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.supplier.region?.provinceName ?? "-",
                          style: AppTextStyle.blackTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          controller.supplier.region?.regencyName ?? "-",
                          style: AppTextStyle.greyTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.darkGreyText),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: AppColors.grey,
                    thickness: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              Convert.getFullDate(controller.supplier.createdAt!),
                              style: AppTextStyle.greyTextStyle.copyWith(fontSize: 14, color: AppColors.darkGreyText),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                              decoration: BoxDecoration(
                                color: controller.supplier.creator?.buyer ? AppColors.primaryLightOrange : AppColors.grey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: controller.supplier.creator?.buyer
                                  ? Row(
                                      children: [
                                        AppAssets.icon(
                                          svg: AppIcons.starVerification,
                                          size: 16,
                                        ),
                                        const SizedBox(width: 4),
                                        Text(
                                          "Terverifikasi",
                                          style: AppTextStyle.blackTextStyle.copyWith(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    )
                                  : Text(
                                      "Belum Terverifikasi",
                                      style: AppTextStyle.blackTextStyle.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                            )
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                "https://app.jala.tech/storage/${controller.supplier.creator?.avatar}",
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Supplier",
                                    style: AppTextStyle.darkGreyTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    controller.supplier.creator?.name ?? "-",
                                    style: AppTextStyle.blackTextStyle.copyWith(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kontak",
                                  style: AppTextStyle.darkGreyTextStyle.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  controller.supplier.creator?.phone ?? "-",
                                  style: AppTextStyle.blackTextStyle.copyWith(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryBlue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
                              onPressed: () => controller.callSupplier(),
                              child: Text("Hubungi", style: AppTextStyle.whiteTextStyle.copyWith(fontWeight: FontWeight.w700)),
                            )
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Harga Terbaru",
                          style: AppTextStyle.blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        // SARAN: Size dibikin New Object :)
                        showPrice("Size 20", controller.supplier.size20),
                        showPrice("Size 30", controller.supplier.size30),
                        showPrice("Size 40", controller.supplier.size40),
                        showPrice("Size 50", controller.supplier.size50),
                        showPrice("Size 60", controller.supplier.size60),
                        showPrice("Size 70", controller.supplier.size70),
                        showPrice("Size 80", controller.supplier.size80),
                        showPrice("Size 90", controller.supplier.size90),
                        showPrice("Size 100", controller.supplier.size100),
                        showPrice("Size 110", controller.supplier.size110),
                        showPrice("Size 120", controller.supplier.size120),
                        showPrice("Size 130", controller.supplier.size130),
                        showPrice("Size 140", controller.supplier.size140),
                        showPrice("Size 150", controller.supplier.size150),
                        showPrice("Size 160", controller.supplier.size160),
                        showPrice("Size 170", controller.supplier.size170),
                        showPrice("Size 180", controller.supplier.size180),
                        showPrice("Size 190", controller.supplier.size190),
                        showPrice("Size 200", controller.supplier.size200),

                        const SizedBox(height: 8),
                        Text(
                          "Catatan",
                          style: AppTextStyle.blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam",
                          style: AppTextStyle.blackTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
