import 'package:app_dependencies/dependecies.dart';

import 'flavors.dart';

import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  ChuckerFlutter.showOnRelease = true;
  await runner.main();
}
