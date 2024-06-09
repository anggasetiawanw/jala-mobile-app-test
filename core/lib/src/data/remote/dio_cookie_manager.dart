import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CookieManager extends Interceptor {
  static final CookieManager _instance = CookieManager._internal();
  static CookieManager get instance => _instance;
  CookieManager._internal();

  String? _cookie;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_cookie != null) {
      options.headers['Cookie'] = _cookie;
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 200) {
      logDebug('response: ${response.headers.map['Set-Cookie']}');
      if (response.headers.map['Set-Cookie'] != null) {
        _saveCookies(response.headers.map['Set-Cookie']![0]);
      }
    } else if (response.statusCode == 401) {
      clearCookies();
    }
    super.onResponse(response, handler);
  }

  void _saveCookies(String cookies) async {
    if (_cookie != cookies && cookies.contains("B1SESSION")) {
      _cookie = cookies;
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('cookie', cookies);
    }
  }

  Future<bool> loadCookies() async {
    final prefs = await SharedPreferences.getInstance();
    _cookie = prefs.getString('cookie');
    if (_cookie != null) {
      return true;
    }
    return false;
  }

  Future<void> clearCookies() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('cookie');
    _cookie = null;
  }
}
