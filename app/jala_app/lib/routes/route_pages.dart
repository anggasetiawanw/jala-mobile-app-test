import 'package:get/get.dart';
import 'package:jala_app/pages/jala_media/detail_shrimp_diase/binding/detail_view_diase_binding.dart';
import 'package:jala_app/pages/jala_media/detail_shrimp_diase/view/detail_view_diase_page.dart';
import 'package:jala_app/pages/jala_media/detail_shrimp_news/binding/detail_shrimp_news_binding.dart';
import 'package:jala_app/pages/jala_media/detail_shrimp_news/view/detail_shrimp_news_page.dart';

import '../pages/jala_media/detail_shrimp_price/binding/detail_shrimp_price_binding.dart';
import '../pages/jala_media/detail_shrimp_price/view/detail_shrimp_price.dart';
import '../pages/jala_media/home_jala_media/binding/jala_media_bindings.dart';
import '../pages/jala_media/home_jala_media/view/jala_media_page.dart';
import '../pages/splash/binding/splash_binding.dart';
import '../pages/splash/view/splash_page.dart';
import 'routes.dart';

class RoutePages {
  static const initial = AppRoutes.splash;
  static final page = [
    GetPage(name: AppRoutes.splash, page: () => const SplashPage(), binding: SplashBindings()),
    GetPage(name: AppRoutes.jalaMedia, page: () => const JalaMediaPage(), binding: JalaMediaBindings()),
    GetPage(name: AppRoutes.detailShrimpPrice, page: () => const DetailShrimpPricePage(), binding: DetailShrimpPriceBinding()),
    GetPage(name: AppRoutes.detailShrimpNews, page: () => const DetailShrimpNewsPage(), binding: DetailShrimpNewsBinding()),
    GetPage(name: AppRoutes.detailDisease, page: () => const DetailViewDiasePage(), binding: DetailViewDiaseBinding()),
  ];
}
