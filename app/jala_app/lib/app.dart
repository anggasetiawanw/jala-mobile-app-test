import 'package:app_dependencies/dependecies.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/route_pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenInit(
        builder: (_) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              useMaterial3: true,
              scaffoldBackgroundColor: Colors.white,
            ),
            navigatorObservers: [ChuckerFlutter.navigatorObserver],
            initialRoute: RoutePages.initial,
            getPages: [...RoutePages.page]));
  }
}
