import 'dart:async';

import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jala_app/pages/jala_media/core/service/region_service.dart';

import '../../core/models/region/region.dart';
import '../../core/models/supplier/supplier.dart';
import '../../core/service/shrimp_price_service.dart';

class JalaMediaController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final ScrollController scrollController = ScrollController();

  RxBool isLoadingPriceShrimp = false.obs;
  RxBool isLoadingSearchRegion = false.obs;

  RxInt selectedSize = 100.obs;
  RxString selectedLocation = "Indonesia".obs;
  Region selectedRegion = Region();

  List listSizeShrimp = [20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200];
  RxList<Region> listLocationShrimp = <Region>[].obs;
  List<Supplier> listSupplier = [];

  Timer? debounce;
  @override
  void onInit() {
    super.onInit();
    isLoadingPriceShrimp.value = true;
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
    getShrimpPrice();
  }

  void getShrimpPrice() async {
    isLoadingPriceShrimp.value = true;
    final response = await ShrimpPriceService.getShrimpPrice(1, selectedLocation.value == "Indonesia" ? "" : selectedRegion.id ?? "");
    isLoadingPriceShrimp.value = false;
    response.fold((error) {
      CustomSnackBar.showCustomErrorSnackBar(title: "Error", message: error.message);
    }, (data) {
      listLocationShrimp.clear();
      listSupplier = data;
    });
    isLoadingPriceShrimp.value = false;
  }

  void getRegionShrimp(String regionName) async {
    isLoadingSearchRegion.value = true;
    final response = await RegionService.getShrimpPrice(regionName);

    response.fold((error) {
      CustomSnackBar.showCustomErrorSnackBar(title: "Error", message: error.message);
    }, (data) {
      listLocationShrimp.clear();
      listLocationShrimp.addAll(data);
    });

    isLoadingSearchRegion.value = false;
  }

  Future<dynamic> showSizeBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: Get.context!,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.90,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Size',
                        style: AppTextStyle.blackTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Tutup',
                          style: AppTextStyle.primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(
                  color: AppColors.grey,
                  thickness: 2,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RawScrollbar(
                      thumbColor: AppColors.primaryBlue,
                      child: SingleChildScrollView(
                        child: Column(
                          children: listSizeShrimp
                              .map((size) => GestureDetector(
                                    onTap: () {
                                      selectedSize.value = size;
                                      Navigator.pop(context);
                                    },
                                    child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: Text(size.toString(), style: AppTextStyle.blackTextStyle),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> showLocationBottomSheet(BuildContext context) {
    getRegionShrimp("");
    return showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: Get.context!,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.90,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Kota/Kabupaten',
                            style: AppTextStyle.blackTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Tutup',
                              style: AppTextStyle.primaryTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: (value) {
                            if (debounce?.isActive ?? false) debounce?.cancel();
                            debounce = Timer(const Duration(milliseconds: 500), () {
                              getRegionShrimp(value);
                            });
                          },
                          decoration: InputDecoration(
                            hintText: selectedLocation.value == "Indonesia" ? "Cari" : selectedLocation.value,
                            hintStyle: AppTextStyle.greyTextStyle.copyWith(
                              fontSize: 14,
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: AppColors.grey,
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: AppColors.primaryBlue,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: AppColors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          selectedLocation.value = "Indonesia";
                          Navigator.pop(context);
                          getShrimpPrice();
                        },
                        child: AppAssets.images(image: AppImages.closeIcon, height: 24, width: 24),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(
                  color: AppColors.grey,
                  thickness: 2,
                ),
                Obx(
                  () => isLoadingSearchRegion.isTrue
                      ? const Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryBlue),
                          ),
                        )
                      : listLocationShrimp.isEmpty
                          ? (Center(
                              child: Text(
                                "Data Tidak ditemukan",
                                style: AppTextStyle.blackTextStyle,
                              ),
                            ))
                          : Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: RawScrollbar(
                                  thumbColor: AppColors.primaryBlue,
                                  child: SingleChildScrollView(
                                    child: Obx(
                                      () => Column(
                                        children: listLocationShrimp
                                            .map((location) => GestureDetector(
                                                  onTap: () {
                                                    selectedRegion = location;
                                                    selectedLocation.value = location.fullName ?? "";
                                                    Navigator.pop(context);
                                                    getShrimpPrice();
                                                  },
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    height: 50,
                                                    child: Text(location.fullName ?? "-", style: AppTextStyle.blackTextStyle),
                                                  ),
                                                ))
                                            .toList(),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
