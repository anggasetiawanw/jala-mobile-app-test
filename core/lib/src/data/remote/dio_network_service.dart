import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:core/src/domain/models/response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../domain/models/eithers.dart';
import '../../exceptions/http_exception.dart';
import '../../mixins/exception_handler_mixin.dart';
import '../../shared/globals.dart';
import 'network_service.dart';

class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  final Dio dio;
  final String baseUrl;

  static List<Interceptor> defaultInterceptors = [
    PrettyDioLogger(
      maxWidth: 100,
      requestHeader: true,
      requestBody: true,
    ),
  ];

  DioNetworkService(this.dio, this.baseUrl) {
    // this throws error while running test
    if (!kTestMode) {
      dio.options = dioBaseOptions;
      dio.interceptors.add(ChuckerDioInterceptor());
      // dio.interceptors.add(CookieManager.instance);
      if (kDebugMode) {
        dio.interceptors.addAll(defaultInterceptors);
      }
    }
  }

  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
      );
  @override
  Map<String, Object> get headers => {
        'accept': 'application/json',
        'content-type': 'application/json',
      };

  @override
  Map<String, dynamic>? updateHeader(Map<String, dynamic> data) {
    final header = {...data, ...headers};
    if (!kTestMode) {
      dio.options.headers = header;
    }
    return header;
  }

  @override
  Future<Either<AppException, Responses>> post(String endpoint, {Map<String, dynamic>? data, FormData? formData, Map<String, dynamic>? queryParameters}) {
    final res = handleException(
      () => dio.post(
        endpoint,
        data: data ?? formData,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<AppException, Responses>> get(String endpoint, {Map<String, dynamic>? queryParameters}) {
    final res = handleException(
      () => dio.get(
        endpoint,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  void setUrl(String url) {
    dio.options.baseUrl = url;
  }

  @override
  Future<Either<AppException, Responses>> delete(String endpoint, {Map<String, dynamic>? queryParameters}) {
    final res = handleException(
      () => dio.delete(
        endpoint,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<AppException, Responses>> patch(String endpoint, {Map<String, dynamic>? data, FormData? formData, Map<String, dynamic>? queryParameters}) {
    final res = handleException(
      () => dio.patch(
        endpoint,
        data: data ?? formData,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<AppException, Responses>> put(String endpoint, {Map<String, dynamic>? data, FormData? formData, Map<String, dynamic>? queryParameters}) {
    final res = handleException(
      () => dio.put(
        endpoint,
        data: data ?? formData,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }
}
