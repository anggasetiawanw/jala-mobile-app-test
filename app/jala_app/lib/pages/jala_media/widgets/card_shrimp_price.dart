import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:jala_app/pages/jala_media/core/models/supplier/supplier.dart';

class CardShrimpPrice extends StatelessWidget {
  final Supplier supplier;
  final int size;
  const CardShrimpPrice({
    super.key,
    required this.supplier,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return supplier.creator == null
        ? const SizedBox()
        : Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.grey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.primaryBlue,
                      child: Text(
                        "1",
                        style: AppTextStyle.whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Supplier",
                            style: AppTextStyle.primaryLightTextStyle.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            supplier.creator?.name ?? "-",
                            style: AppTextStyle.blackTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                      decoration: BoxDecoration(
                        color: supplier.creator?.buyer ? AppColors.primaryLightOrange : AppColors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: supplier.creator?.buyer
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
                const SizedBox(height: 8),
                Text(
                  Convert.getDate(supplier.createdAt),
                  style: AppTextStyle.primaryLightTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  supplier.region?.provinceName ?? "-",
                  style: AppTextStyle.blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                Text(
                  supplier.region?.regencyName ?? "-",
                  style: AppTextStyle.blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Size ${size.toString()}",
                          style: AppTextStyle.primaryLightTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          "IDR ${Convert.toCurrencyWithoutDecimal(Convert.getPriceShrimpBySize(supplier, size).toString(), "", ".")}",
                          style: AppTextStyle.blackTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryBlue, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),
                      onPressed: () {},
                      child: Text("LIHAT DETAIL", style: AppTextStyle.whiteTextStyle.copyWith(fontWeight: FontWeight.w700)),
                    )
                  ],
                )
              ],
            ),
          );
  }
}
