import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/models/supplier/supplier.dart';
import '../../../../core/service/shrimp_price_service.dart';

class DetailShrimpPriceController extends GetxController {
  Supplier supplier = Supplier();
  RxBool isLoading = false.obs;
  ScrollController scrollController = ScrollController();
  @override
  void onInit() {
    super.onInit();
    isLoading.value = true;
    supplier = Get.arguments as Supplier;
  }

  @override
  void onReady() {
    super.onReady();
    getShrimpPriceById();
  }

  void getShrimpPriceById() async {
    isLoading.value = true;
    final response = await ShrimpPriceService.getShrimpPriceById(supplier);
    response.fold((exp) {
      isLoading.value = false;
      CustomSnackBar.showCustomErrorSnackBar(title: "Failed", message: exp.message);
    }, (data) {
      supplier = data;
      isLoading.value = false;
    });
  }

  void shareSupplier() {
    Share.shareUri(Uri.parse("https://app.jala.tech/shrimp_prices/${supplier.id}"));
  }

  void callSupplier() {
    launchUrl(Uri(scheme: 'tel', path: supplier.creator?.phone ?? ''));
  }
}
