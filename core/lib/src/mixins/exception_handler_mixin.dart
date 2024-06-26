import 'dart:async';
import 'dart:io';

import 'package:core/core.dart';
import 'package:dio/dio.dart';

import '../domain/models/response.dart';

mixin ExceptionHandlerMixin on NetworkService {
  Future<Either<AppException, Responses>> handleException<T extends Object>(Future<Response<dynamic>> Function() handler, {String endpoint = ''}) async {
    try {
      final res = await handler();
      return Right(
        Responses(
          code: res.statusCode ?? 200,
          data: res.data['data'],
          reasonPhrase: res.statusMessage,
        ),
      );
    } catch (e) {
      String message = '';
      String identifier = '';
      Map<String, dynamic> data = {};
      int statusCode = 0;
      logDebug('Exception at>>>>>>>>>>>>>>>>>>>>>>> : ${e.runtimeType}');
      switch (e.runtimeType) {
        case SocketException:
          e as SocketException;
          message = 'Unable to connect to the server.';
          statusCode = 0;
          identifier = 'Socket Exception ${e.message}\n at  $endpoint';
          break;

        case DioException:
          e as DioException;
          data = e.response?.data;
          message = e.response?.data?['error']['message'] ?? 'Internal Error occurred';
          statusCode = 1;
          identifier = 'DioException ${e.message} \nat  $endpoint';
          break;

        default:
          message = 'Unknown error occurred';
          statusCode = 2;
          identifier = 'Unknown error ${e.toString()}\n at $endpoint';
      }
      return Left(
        AppException(
          message: message,
          statusCode: statusCode,
          identifier: identifier,
          data: data,
        ),
      );
    }
  }
}
