import 'package:app_dependencies/dependecies.dart';

import '../../utils/network_service.dart';
import '../models/diases_news/diases_news.dart';

class DiasesNewsService {
  static Future<Either<AppException, List<DiasesNews>>> getShrimpNews() async {
    try {
      final response = await NetworkApp.service.get(
        "/diseases",
        queryParameters: {
          "per_page": 15,
          "page": 1,
        },
      );
      return response.fold((exp) {
        return Left(exp);
      }, (response) {
        final List<DiasesNews> diasesNews = [];
        response.data.forEach((diaseNews) {
          diasesNews.add(DiasesNews.fromJson(diaseNews));
        });
        return Right(diasesNews);
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
