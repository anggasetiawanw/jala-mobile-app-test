import 'package:mobile_kit/assets/app_asset_model.dart';

import 'assets.gen.dart';

enum AppImages {
  askJala,
  closeIcon,
  greyShare,
  logoJala,
  quizByJala,
  verification;

  AppAssetsData get data => switch (this) {
        askJala => AppAssetsData(
            path: Assets.images.askJala.path,
          ),
        closeIcon => AppAssetsData(
            path: Assets.images.closeIcon.path,
          ),
        greyShare => AppAssetsData(
            path: Assets.images.greyShare.path,
          ),
        quizByJala => AppAssetsData(
            path: Assets.images.quizByJALA.path,
          ),
        verification => AppAssetsData(
            path: Assets.images.verification.path,
          ),
        logoJala => AppAssetsData(
            path: Assets.images.logoJala.path,
          ),
      };
}
