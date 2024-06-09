import 'package:app_dependencies/dependecies.dart';
import 'package:jala_app/pages/jala_media/core/models/region/region.dart';

import '../../../../utils/network_service.dart';

class RegionService {
    static Future<Either<AppException, List<Region>>> getShrimpPrice(String name) async {
    try {
      final response = await NetworkApp.service.get(
        "/regions",
        queryParameters: {
          "has": "shrimp_prices",
          "search": name,
        },
      );
      return response.fold((exp) {
        return Left(exp);
      }, (response) {
        final List<Region> regions = [];
        response.data.forEach((region) {
          regions.add(Region.fromJson(region));
        });
        return Right(regions);
      });
    } catch (e) {
      return Left(
        AppException(
          message: '$e. Please try again later.',
          statusCode: 1,
          identifier: e.toString(),
          data: {},
        ),
      );
    }
  }
}