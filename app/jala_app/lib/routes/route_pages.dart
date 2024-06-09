import 'package:get/get.dart';

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
  ];
}
