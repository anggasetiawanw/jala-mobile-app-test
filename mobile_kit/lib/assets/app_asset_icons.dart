import 'app_asset_model.dart';
import 'assets.gen.dart';

enum AppIcons {
  search,
  whiteShare,
  sizeShrimp,
  starVerification;
    AppAssetsData get data => switch (this) {
        search => AppAssetsData(
            path: Assets.icons.searchIcon.path,
          ),
        whiteShare => AppAssetsData(
            path: Assets.icons.share.path,
          ),
        sizeShrimp => AppAssetsData(
            path: Assets.icons.sizeShrimp.path,
          ),
        starVerification => AppAssetsData(
            path: Assets.icons.starVerification.path,
          ),
      };
}
