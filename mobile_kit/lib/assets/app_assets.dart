import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_kit/assets/app_asset_images.dart';
import 'package:mobile_kit/assets/app_asset_model.dart';
import 'package:mobile_kit/assets/app_asset_type.dart';

import 'app_asset_icons.dart';

class AppAssets extends StatelessWidget {
  const AppAssets._({
    required AppAssetsType type,
    required this.data,
    this.repeat = false,
    this.borderRadius,
    this.fit,
    this.imageRepeat,
    this.shape,
    this.width,
    this.height,
    this.color,
    this.border,
  }) : _type = type;

  factory AppAssets.icon({
    required AppIcons svg,
    double? size,
    BoxFit? fit,
    Color? color,
  }) =>
      AppAssets._(
        type: AppAssetsType.svg,
        data: svg.data,
        width: size,
        height: size,
        fit: fit,
        color: color,
      );

  factory AppAssets.iconCustom({
    required AppIcons svg,
    double? width,
    double? height,
    BoxFit? fit,
    Color? color,
  }) =>
      AppAssets._(
        type: AppAssetsType.svg,
        data: svg.data,
        width: width,
        height: height,
        fit: fit,
        color: color,
      );

  factory AppAssets.animation({
    required AppImages animation,
    double? width,
    double? height,
    bool repeat = true,
    BoxFit fit = BoxFit.contain,
  }) =>
      AppAssets._(
        type: AppAssetsType.animations,
        data: animation.data,
        repeat: repeat,
        width: width,
        height: height,
        fit: fit,
      );

  factory AppAssets.images({
    required AppImages image,
    double? width,
    double? height,
    BorderRadius? borderRadius,
    BoxShape? shape,
    BoxFit? fit,
    Border? border,
    ImageRepeat repeat = ImageRepeat.noRepeat,
  }) =>
      AppAssets._(
        type: AppAssetsType.images,
        width: width,
        height: height,
        imageRepeat: repeat,
        border: border,
        borderRadius: borderRadius,
        shape: shape,
        fit: fit,
        data: image.data,
      );

  final AppAssetsType _type;
  final AppAssetsData data;
  final bool repeat;
  final ImageRepeat? imageRepeat;
  final BoxFit? fit;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final Color? color;
  final BoxShape? shape;
  final Border? border;

  @override
  Widget build(BuildContext context) => switch (_type) {
        AppAssetsType.svg => SvgPicture.asset(
            data.path,
            fit: fit ?? BoxFit.contain,
            height: height,
            width: width,
            colorFilter: color != null
                ? ColorFilter.mode(
                    color!,
                    BlendMode.srcIn,
                  )
                : null,
            package: 'mobile_kit',
          ),
        AppAssetsType.images => ExtendedImage.asset(
            data.path,
            width: (width ?? 0) * 1.w,
            height: (height ?? 0) * 1.h,
            borderRadius: borderRadius,
            repeat: imageRepeat!,
            shape: shape,
            package: 'mobile_kit',
          ),
        AppAssetsType.animations => Lottie.asset(
            data.path,
            width: (width ?? 0) * 1,
            height: (height ?? 0) * 1,
            repeat: repeat,
            fit: fit,
            package: 'mobile_kit',
          ),
      };
}
