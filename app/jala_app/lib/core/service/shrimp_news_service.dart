import 'package:app_dependencies/dependecies.dart';
import 'package:jala_app/core/models/shrimp_news/shrimp_news.dart';

import '../../utils/network_service.dart';

class ShrimpNewsService {
  static Future<Either<AppException, List<ShrimpNews>>> getShrimpNews() async {
    try {
      final response = await NetworkApp.service.get(
        "/posts",
        queryParameters: {
          "per_page": 15,
          "page": 1,
          "with": "creator",
        },
      );
      return response.fold((exp) {
        return Left(exp);
      }, (response) {
        final List<ShrimpNews> shrimpNews = [];
        response.data.forEach((shrimpNew) {
          shrimpNews.add(ShrimpNews.fromJson(shrimpNew));
        });
        return Right(shrimpNews);
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
