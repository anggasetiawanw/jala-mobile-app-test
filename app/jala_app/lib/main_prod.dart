import 'package:app_dependencies/dependecies.dart';

import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.prod;
  ChuckerFlutter.showOnRelease = false;
  await runner.main();
}
