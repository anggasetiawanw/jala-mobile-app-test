import 'package:core/src/domain/models/response.dart';
import 'package:dio/dio.dart';

import '../../domain/models/eithers.dart';
import '../../exceptions/exception.dart';


abstract class NetworkService {
  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);
  void setUrl(String url);

  Future<Either<AppException, Responses>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<AppException, Responses>> post(
    String endpoint, {
    Map<String, dynamic>? data,
    FormData? formData,
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<AppException, Responses>> put(
    String endpoint, {
    Map<String, dynamic>? data,
    FormData? formData,
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<AppException, Responses>> delete(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<AppException, Responses>> patch(
    String endpoint, {
    Map<String, dynamic>? data,
    FormData? formData,
    Map<String, dynamic>? queryParameters,
  });
}