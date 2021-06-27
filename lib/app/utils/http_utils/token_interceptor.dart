import 'package:dio/dio.dart';

const String _kTokenKey = 'Authorization';
const String _kTokenPrefix = 'Bearer ';

class TokenInterceptors<T> extends InterceptorsWrapper {
  String? token;

  TokenInterceptors({this.token = ''});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (token!.isNotEmpty) {
      options.headers[_kTokenKey] = '$_kTokenPrefix$token';
    }
    super.onRequest(options, handler);
  }
}
