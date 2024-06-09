import 'package:equatable/equatable.dart';

import '../domain/models/eithers.dart';
import '../domain/models/response.dart';

class AppException implements Exception {
  final String message;
  final int statusCode;
  final String identifier;
  final Map<String, dynamic> data;

  AppException({
    required this.message,
    required this.statusCode,
    required this.identifier,
    required this.data,
  });
  @override
  String toString() {
    return 'statusCode=$statusCode\nmessage=$message\nidentifier=$identifier';
  }
}

class CacheFailureException extends Equatable implements AppException {
  @override
  String get identifier => 'Cache failure exception';

  @override
  String get message => 'Cache failure exception';

  @override
  int get statusCode => 100;

  @override
  List<Object?> get props => [message, statusCode, identifier, data];

  @override
  Map<String, dynamic> get data => {};
}

//  extension

extension HttpExceptionExtension on AppException {
  Left<AppException, Responses> get toLeft => Left<AppException, Responses>(this);
}
