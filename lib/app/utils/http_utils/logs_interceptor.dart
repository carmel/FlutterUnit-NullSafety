import 'package:dio/dio.dart';

class LogsInterceptors extends InterceptorsWrapper {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('==========请求异常: ' + err.toString() + "==========");
    print('==========请求异常信息: ' + err.response.toString() + "==========");
    super.onError(err, handler);
  }
}
