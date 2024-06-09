import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';

class DioAdapterCrt {
  static void addCertificate(Dio dio) {
    if (!kIsWeb) {
      (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () => HttpClient()..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
    }
  }
}
