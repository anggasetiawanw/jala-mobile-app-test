import 'package:app_dependencies/dependecies.dart';
import 'package:jala_app/pages/jala_media/core/models/supplier/supplier.dart';
import 'package:jala_app/utils/network_service.dart';

class ShrimpPriceService {
  static Future<Either<AppException, List<Supplier>>> getShrimpPrice(int page, String regionId) async {
    try {
      final response = await NetworkApp.service.get(
        "/shrimp_prices",
        queryParameters: {
          "per_page": 15,
          "page": page,
          "with": "region,creator",
          "region_id": regionId,
        },
      );
      return response.fold((exp) {
        return Left(exp);
      }, (response) {
        final List<Supplier> suppliers = [];
        response.data.forEach((supplier) {
          suppliers.add(Supplier.fromJson(supplier));
        });
        return Right(suppliers);
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
